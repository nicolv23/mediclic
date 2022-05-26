/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
const weekend = jour =>{
    // 6 quand c'est samedi, 0 pour dimanche
    return jour % 7 === 6 || jour % 7 === 0 ;
};

const getNomJour = jour => {
    const date = new Date(Date.UTC(2022, 5, jour));
    
    
    return new Intl.DateTimeFormat("fr-CA", { weekday: "short" }).format(date);
    
}

 

export {weekend, getNomJour}

