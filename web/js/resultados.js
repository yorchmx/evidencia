/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
window.addEventListener('load', function(){
    document.getElementById('btnc').addEventListener('click', function(){
        var peso = document.getElementById('pes').value;
        
        if(peso <= 0){
            alert("No se aceptan masas corporeles en 0 o negativas");
        }
    });
});


