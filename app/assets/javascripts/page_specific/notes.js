//= require 'selectize'

$(function(){
  $('.selectize#tags').selectize({
    delimiter: ',',
    persist: false,
    plugins: ['remove_button'],
    create: function(input) {
      return {
        value: input,
        text: input
      }
    }
  });
});