<?php

namespace App\Http\Controllers;

use App\Models\Food;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class FoodController extends Controller
{
    /**
     * Get all foods sorted by name
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        try {
            // Get all foods and sort by name
            $foods = Food::orderBy('name')->get();
            
            // Process each food to ensure ingredients are properly formatted
            $foods = $foods->map(function($food) {
                // Make sure ingredients is a proper JSON array
                if (is_string($food->ingredients)) {
                    $food->ingredients = json_decode($food->ingredients);
                }
                return $food;
            });
            
            return response()->json($foods);
        } catch (\Exception $e) {
            Log::error('Error fetching foods', [
                'message' => $e->getMessage(),
                'trace' => $e->getTraceAsString()
            ]);
            
            return response()->json([
                'error' => 'An error occurred while fetching foods', 
                'details' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Get a specific food by ID
     *
     * @param int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function show($id)
    {
        try {
            $food = Food::findOrFail($id);
            
            // Make sure ingredients is a proper JSON array
            if (is_string($food->ingredients)) {
                $food->ingredients = json_decode($food->ingredients);
            }
            
            return response()->json($food);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return response()->json([
                'error' => 'Food not found',
                'details' => "No food with ID {$id} exists"
            ], 404);
        } catch (\Exception $e) {
            Log::error('Error fetching food', [
                'id' => $id,
                'message' => $e->getMessage()
            ]);
            
            return response()->json([
                'error' => 'An error occurred while fetching the food details', 
                'details' => $e->getMessage()
            ], 500);
        }
    }
}