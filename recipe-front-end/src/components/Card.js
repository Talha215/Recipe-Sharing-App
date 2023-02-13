import RecipeApi from '../api/RecipeApi';
import RecipeModal from './RecipeModal';
import React, { useState } from 'react';

function Card(props) {
    const [displayModal, setDisplayModal] = useState(false);
    const userData = props.userdata;
    console.log(userData)
    console.log(props.recipeuser)
    const isCreator = () => {
        return userData.username === props.recipeuser
    } 

    return (
        <div className="card" style={{width: "18rem"}}>

            <div className="cardImgDiv rounded">
                <img className="cardImg rounded mx-auto d-block" src={props.image} alt="Recipe Visual"/>
            </div>
            
            <div className="card-body">
                <h5 className="card-title">{props.title}</h5>
                <h6 className="card-subtitle mb-2 text-muted">
                    {props.subtitle}
                </h6>
                <p className="card-text">{props.caption}</p>
                { isCreator() ? (
                        <button className="btn btn-primary" onClick={() => { RecipeApi.deleteRecipe(userData, props.recipe) }}>Delete</button>
                    ) : (
                        <button className="btn btn-primary" onClick={() => { RecipeApi.saveRecipe(userData, props.recipe) }}>Save</button>
                    )
                }
                
                <button className="btn btn-primary" onClick={() => { RecipeApi.makeRecipe(); setDisplayModal(true)}}>Make</button>
            </div>
            
            <RecipeModal userdata={props.userdata} recipe={props.recipe} image={props.image} displayModal = {displayModal} setDisplayModal = {setDisplayModal} />
        </div>
    )
}
export default Card;