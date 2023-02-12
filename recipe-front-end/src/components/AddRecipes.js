import { useEffect, useState } from 'react';
import './AddRecipes.css'
import RecipeApi from '../api/RecipeApi';

function AddRecipes() {
    const [ingredients, setIngredients] = useState([]);
    const selectedIngredients = [];

    useEffect( () => {
        console.log("Hello, this component was mounted!")

        // RecipeApi.getIngredientsSpoonacular(setIngredients);
    }, [] )

    const findRecipes = () => {
        // This finds a list of recipes from the ingredients selected

    }

    return (
        <div>
            <div className="recipe-app-body-container">
                <h3>Select Ingredients</h3>
                <hr/>
                <div className="ingredient-list">
                    {
                        ingredients.map((element) => {
                            return (
                                <div className="form-check">
                                    <input className="form-check-input" type="checkbox" value="" id="flexCheckDefault"/>
                                    <label className="form-check-label" htmlFor="flexCheckDefault">
                                        {element.name}
                                    </label>
                                </div>
                            )
                        })
                    } 
                    <button className="btn btn-primary login-form-button" 
                    onClick={ findRecipes }>
                        Find Recipes
                    </button>
                </div>
            </div>
        </div>
    )
}

export default AddRecipes;