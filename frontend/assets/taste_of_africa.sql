-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 14, 2025 at 12:38 AM
-- Server version: 8.0.35
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: taste_of_africa
--

-- --------------------------------------------------------

--
-- Table structure for table foods
--

CREATE TABLE foods (
  id bigint UNSIGNED NOT NULL,
  name varchar(255) NOT NULL,
  image_url varchar(255) NOT NULL,
  short_description text NOT NULL,
  description text NOT NULL,
  ingredients json NOT NULL,
  preparation text NOT NULL,
  region varchar(255) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table foods
--

INSERT INTO foods (id, name, image_url, short_description, description, ingredients, preparation, region, created_at, updated_at) VALUES
(1, 'JOLLOF RICE', 'images/jollof-rice.jpg', 'A flavorful one-pot dish made with rice, tomatoes, onions, peppers, and spices. Known for its vibrant red color and smoky flavor.', 'Jollof Rice is a staple at social gatherings and celebrations across West Africa. This flavorful one-pot dish is made with rice, tomatoes, onions, peppers, and various spices. Its vibrant red color and distinctive smoky flavor make it instantly recognizable and deeply satisfying.', '[\"Long grain rice\", \"Tomatoes\", \"Red bell peppers\", \"Scotch bonnet peppers\", \"Onions\", \"Vegetable oil\", \"Tomato paste\", \"Bay leaves\", \"Curry powder\", \"Thyme\", \"Stock cubes\", \"Salt and pepper\"]', 'Start by blending tomatoes, red bell peppers, and onions into a smooth puree. Heat oil in a large pot, sauté some sliced onions until translucent. Add tomato paste and fry for a few minutes. Pour in the blended mixture and cook until the raw smell disappears and the sauce thickens. Add spices, bay leaves, and seasonings. Wash the rice thoroughly and add to the pot. Pour in hot water or stock, cover tightly and cook on low heat until the rice is tender and has absorbed all the liquid.', 'West Africa', '2025-04-11 13:56:50', '2025-04-11 13:56:50'),
(2, 'EGUSI SOUP', 'images/egusi-soup.jpg', 'A rich, nutty West African soup made from ground melon seeds, typically cooked with leafy greens, palm oil, and assorted meats/fish.', 'Egusi Soup is a staple across Nigeria and neighboring countries. Known for its creamy texture and bold flavors, it\'s made from ground melon seeds cooked with leafy greens, palm oil, and various proteins. The soup has a distinctive nutty taste and thick consistency that pairs perfectly with fufu, pounded yam, or other starchy sides.', '[\"Ground melon seeds (egusi)\", \"Palm oil\", \"Leafy greens (spinach, bitter leaf, or pumpkin leaves)\", \"Assorted meat (beef, tripe, chicken)\", \"Fish (stockfish, dried fish)\", \"Crayfish\", \"Onions\", \"Peppers\", \"Stock cubes\", \"Salt\"]', 'Heat palm oil in a pot until hot. Add chopped onions and sauté until translucent. Mix ground egusi seeds with a little water to form a paste. Add this paste to the pot and cook, stirring frequently. Add meat or fish stock, cooked meats, and seasonings. Simmer until the oil separates slightly. Add chopped leafy greens and cook until tender but still green. Adjust seasoning to taste before serving.', 'Nigeria and neighboring countries', '2025-04-11 13:56:50', '2025-04-11 13:56:50'),
(3, 'SUYA', 'images/suya.jpg', 'A spicy grilled meat skewer and iconic West African street food, featuring thinly sliced beef, chicken, or goat coated in a fiery peanut-based spice blend.', 'Suya is an iconic West African street food consisting of thinly sliced beef, chicken, or goat meat that\'s coated in a spicy peanut-based seasoning known as yaji. The seasoned meat is skewered and grilled over open flames, creating a smoky, spicy delicacy that\'s typically served with fresh onions, tomatoes, and extra yaji spice.', '[\"Beef, chicken, or goat meat\", \"Ground peanuts\", \"Cayenne pepper\", \"Paprika\", \"Ginger powder\", \"Garlic powder\", \"Onion powder\", \"Bouillon powder\", \"Salt\", \"Vegetable oil\", \"Fresh onions and tomatoes for serving\"]', 'Slice the meat thinly against the grain. Mix ground peanuts with all the spices to create yaji spice blend. Thread the meat onto skewers and brush with a little oil. Generously coat the meat with the yaji spice mixture, ensuring all sides are covered. Grill over hot coals or open flames, turning frequently until cooked through but still juicy. Serve hot with sliced onions, tomatoes, and extra yaji for dipping.', 'West Africa', '2025-04-11 13:56:50', '2025-04-11 13:56:50'),
(4, 'OKRO SOUP', 'images/okro-soup.jpg', 'A thick, viscous Nigerian soup made from okra pods, palm oil, and assorted proteins. Known for its signature \"draw\" texture.', 'Okro Soup is a popular Nigerian dish known for its distinctive slimy or \"draw\" texture that comes from the okra pods. This hearty soup combines fresh okra with palm oil, assorted meats or fish, and spices to create a nutritious and satisfying meal that\'s often served with pounded yam, eba, or other starchy sides.', '[\"Fresh okra pods\", \"Palm oil\", \"Assorted meats and fish\", \"Crayfish\", \"Stock fish\", \"Peppers\", \"Onions\", \"Stock cubes\", \"Salt\"]', 'Wash and slice okra pods into small rounds. Heat palm oil in a pot, add chopped onions and sauté briefly. Add pre-cooked meat, fish, and their stock. Bring to a simmer. Add the sliced okra and allow to cook for a few minutes until it releases its viscous properties. Add ground crayfish, peppers, and seasonings. Simmer briefly, being careful not to overcook the okra, which would reduce the \"draw\". Serve hot with a starchy side dish.', 'West Africa and the diaspora', '2025-04-11 13:56:50', '2025-04-11 13:56:50'),
(5, 'AKARA', 'images/akara.jpg', 'A savory vegan fritter made from blended black-eyed peas, onions, and peppers, deep-fried to golden perfection.', 'Akara is a beloved Nigerian street food often paired with bread, pap (corn pudding), or custard. These crispy bean fritters are made from peeled black-eyed peas that are ground into a smooth paste, mixed with onions and peppers, and deep-fried until golden. The result is a fritter with a crispy exterior and fluffy interior, offering a perfect balance of flavors and textures.', '[\"Black-eyed peas\", \"Onions\", \"Peppers\", \"Salt\", \"Vegetable oil for frying\"]', 'Soak black-eyed peas for 1-2 hours, then rub between hands to remove skins. Rinse thoroughly until water runs clear. Blend peeled beans with onions and peppers into a smooth paste. Beat the mixture vigorously to incorporate air (this makes the fritters lighter). Heat oil in a deep pan. Drop spoonfuls of the batter into hot oil and fry until golden brown on both sides. Drain on paper towels and serve hot.', 'Nigeria', '2025-04-11 13:56:50', '2025-04-11 13:56:50'),
(6, 'MOIMOI', 'images/moimoi.jpg', 'A savory Nigerian bean pudding made from blended black-eyed peas, peppers, onions, and spices, steamed to perfection.', 'Moimoi is a versatile dish enjoyed as a snack or side, often paired with pap (ogi). This savory bean pudding is made from blended black-eyed peas mixed with peppers, onions, and seasonings, then steamed to a soft, custard-like consistency. The pudding has a fluffy texture and rich flavor that makes it a comfort food for many Nigerians.', '[\"Black-eyed peas\", \"Red bell peppers\", \"Onions\", \"Vegetable oil\", \"Stock cubes\", \"Salt\", \"Optional fillings: boiled eggs, fish, corned beef\"]', 'Soak black-eyed peas for 1-2 hours, then peel by rubbing between hands. Rinse thoroughly. Blend peeled beans with peppers and onions into a smooth paste. Mix in oil and seasonings. Pour into containers (traditionally leaves, but molds or ramekins work too). Add optional fillings like boiled eggs or fish. Cover and steam until firm, usually about 45-60 minutes. Serve warm.', 'Nigeria', '2025-04-11 13:56:50', '2025-04-11 13:56:50'),
(7, 'DODO', 'images/dodo.jpg', 'A popular Nigerian snack made from sliced plantains that are deep-fried until crispy and golden.', 'Dodo is the Nigerian term for fried plantains, a popular side dish or snack enjoyed throughout the country. Made from ripe plantains that are sliced and deep-fried until golden and caramelized, dodo offers a perfect sweet and savory combination. It\'s often served alongside rice dishes, beans, or as a snack on its own.', '[\"Ripe plantains (yellow with black spots)\", \"Vegetable oil\", \"Salt (optional)\"]', 'Peel ripe plantains and slice diagonally or into rounds about 1/2 inch thick. Heat vegetable oil in a pan until hot. Carefully add plantain slices and fry until golden brown on one side, then flip and fry the other side. Remove from oil and drain on paper towels. Sprinkle with a little salt if desired and serve warm.', 'Nigeria', '2025-04-11 13:56:50', '2025-04-11 13:56:50'),
(8, 'FRIED RICE', 'images/fried-rice.jpg', 'A flavourful dish blending Nigerian spices with global influences, featuring bold flavours from curry powder, thyme, and local stock cubes.', 'Nigerian Fried Rice takes inspiration from global fried rice traditions but incorporates local spices and ingredients to create a distinctive flavor profile. This colorful dish combines rice with a variety of vegetables, proteins, and seasonings for a complete meal that\'s popular at celebrations and gatherings.', '[\"Long grain rice\", \"Carrots\", \"Green peas\", \"Sweet corn\", \"Green beans\", \"Onions\", \"Proteins (chicken, shrimp, or beef)\", \"Curry powder\", \"Thyme\", \"Stock cubes\", \"Vegetable oil\"]', 'Cook rice until firm but not mushy, rinse with cold water, and set aside. Dice vegetables into small, uniform pieces. Stir-fry proteins until cooked and set aside. In the same pan, sauté onions until translucent, add diced vegetables and spices, cooking until tender. Add the cooked rice, mix thoroughly with vegetables, then add back the proteins. Stir-fry until everything is well combined and heated through.', 'Nigeria (with global influences)', '2025-04-11 13:56:50', '2025-04-11 13:56:50'),
(9, 'PEPPER SOUP', 'images/pepper-soup.jpg', 'A spicy Nigerian broth made with meaty/fish, chili peppers, utazi, and ehuru, offering complex nutty, bitter, and floral flavours.', 'Pepper Soup is a spicy, light soup made with meat or fish and a blend of aromatic spices. Despite its name, the heat level can be adjusted according to preference. This soup is known for its medicinal properties and is often served during cold weather or when someone is feeling under the weather. It\'s typically eaten on its own or with boiled yam or rice.', '[\"Meat (goat, beef, chicken) or fish\", \"Pepper soup spice mix (ehuru, uziza seeds, uda seeds)\", \"Scotch bonnet peppers\", \"Onions\", \"Fresh herbs (utazi, scent leaves)\", \"Stock cubes\", \"Salt\"]', 'Wash meat or fish and cut into serving pieces. Bring water to a boil in a pot, add meat or fish and cook until almost tender. Add chopped onions, pepper soup spice mix, and peppers. Simmer until meat is fully tender and flavors have melded. Add fresh herbs in the last few minutes of cooking. Adjust seasoning to taste and serve hot.', 'Nigeria', '2025-04-11 13:56:50', '2025-04-11 13:56:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table foods
--
ALTER TABLE foods
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table foods
--
ALTER TABLE foods
  MODIFY id bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
