/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
window.addEventListener('load', function(){
    document.getElementById('btn').addEventListener('click', function(){
        var estatura = document.getElementById('est').value;
        var edad = document.getElementById('ed').value;
        
        if(edad > 14){
        if(estatura < 2.5 && estatura > .9){
        }else{
            alert("No se admiten estauras mayores a 2.5 o menos a 2 metro, \n\
                    favor de ingresar de nuevo los datos");
        }    
        }else{
            alert("Debes de tener al menos 15 años para realizar tu calculo");
        }
    });
});


