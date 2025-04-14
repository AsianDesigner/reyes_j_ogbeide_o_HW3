new Vue({
    el: '#app',
    data: {
        foods: [],
        loading: true,
        error: null,
        showModal: false,
        selectedFood: null,
        loadingDetails: false,
        detailsError: null,
        apiBaseUrl: 'http://localhost/taste_of_africa/api/public/'
    },
    mounted() {
        this.fetchFoods();
        this.animateHeader();
        
        // Debug logging
        console.log("App mounted, API Base URL:", this.apiBaseUrl);
    },
    methods: {
        getImageUrl(path) {
            // If the path already starts with http, it's an external URL
            if (path.startsWith('http')) {
                return path;
            }
            
            // Remove any leading slash or "images/" from the path
            let cleanPath = path;
            if (cleanPath.startsWith('/')) {
                cleanPath = cleanPath.substring(1);
            }
            if (cleanPath.startsWith('images/')) {
                cleanPath = cleanPath.substring(7);
            }
            
            return `${this.apiBaseUrl}images/${cleanPath}`;
        },
        parseIngredients(food) {
            if (food && food.ingredients) {
                // If ingredients is a string, parse it
                if (typeof food.ingredients === 'string') {
                    try {
                        food.ingredients = JSON.parse(food.ingredients);
                    } catch (e) {
                        console.error('Error parsing ingredients:', e);
                        food.ingredients = [];
                    }
                }
            } else if (food) {
                // If no ingredients, set to empty array
                food.ingredients = [];
            }
            return food;
        },
        fetchFoods() {
            this.loading = true;
            this.error = null;
            
            // Log the request
            console.log("Fetching foods from:", `${this.apiBaseUrl}foods`);
            
            axios.get(`${this.apiBaseUrl}foods`)
                .then(response => {
                    console.log("API response:", response.data);
                    
                    // Map and parse each food
                    this.foods = response.data.map(food => this.parseIngredients(food));
                    this.loading = false;
                    
                    this.$nextTick(() => {
                        this.animateFoodCards();
                    });
                })
                .catch(err => {
                    console.error('Error fetching foods:', err);
                    this.error = 'Failed to load foods. Please try again later.';
                    this.loading = false;
                });
        },
        viewDetails(foodId) {
            this.loadingDetails = true;
            this.detailsError = null;
            this.showModal = true;
            document.body.style.overflow = 'hidden'; // Prevent scrolling
            
            // Log the request
            console.log("Fetching details for food ID:", foodId);
            
            axios.get(`${this.apiBaseUrl}foods/${foodId}`)
                .then(response => {
                    console.log("Food details response:", response.data);
                    
                    // Parse ingredients
                    this.selectedFood = this.parseIngredients(response.data);
                    this.loadingDetails = false;
                    
                    this.$nextTick(() => {
                        this.animateModal();
                    });
                })
                .catch(err => {
                    console.error('Error fetching food details:', err);
                    this.detailsError = 'Failed to load food details. Please try again later.';
                    this.loadingDetails = false;
                });
        },
    }
});