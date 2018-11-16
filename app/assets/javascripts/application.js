// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

const sharedDeviseLinkHandler = (event) => {
    if (event.target.classList.contains('shared_devise_link')){
        var modalElement = document.getElementById('modal')
        modalElement.remove()
    }
} 

const closeModal = (modalElement) => {
    modalElement.remove()
    App.mainContent.style.visibility = "";
    App.mainContent.style.height = null;
}

const closeModalListener = element => {
    let elementToObserve = element
    let closeButton = document.getElementById(elementToObserve)
    let modalElement = document.getElementById('modal')

    if (closeButton && modalElement) {
        closeButton.addEventListener('click', () => {
            closeModal(modalElement)
        })
    }
}

const hideMainContent = () => {
    App.mainContent.style.visibility = "hidden";
    App.mainContent.style.height = '0px';
}

const displayTemplate = html => {
    hideMainContent();
    App.tempContent.innerHTML = html
}

const displayModal = html => {
    hideMainContent();
    App.tempContent.innerHTML = html
    closeModalListener('cancel_modal')
}

document.addEventListener('turbolinks:load', () => {
    App.mainContent = document.getElementById('main_content')
    App.tempContent = document.getElementById('temp_content')

    let flashElement = document.getElementById('messages')
    setTimeout(()=>{ 
        flashElement.style.display = 'none' 
    }, 2000);
})
