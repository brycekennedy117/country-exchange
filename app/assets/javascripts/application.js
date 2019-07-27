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
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$( document ).ready(function() {
    $('a[id^=reply-]').click(function() {
        let id = $(this).attr('id');
        let num = id.split("-")[1];
        $(`#reply-form-${num}`).toggle()
        if($(this).text() === 'Reply') {
            $(this).html('<i class="fas fa-times"></i> Cancel');
        }
        else {
            $(this).text('Reply')
        }
    });
});

$( document ).ready(function() {
    $('[id^=post-]').click(function() {
        let id = $(this).attr('id');
        let num = id.split("-")[1];

        $(`#post-form-${num}`).val('\t> ' + $(`#post-content-${num}`).text().trim() + '\n')
    });
});

$( document ).ready(function() {
    $('#comment-link').click(function() {
        $('#comments-div').toggle();
        if ($('#toggle-arrow').html() === '<i class="fas fa-angle-double-down"></i>') {
            $('#toggle-arrow').html('<i class="fas fa-angle-double-up"></i>');
        }
        else {
            $('#toggle-arrow').html('<i class="fas fa-angle-double-down"></i>');
        }
    });
});

$( document ).ready(function() {
    $('[id^=expand-]').click(function() {
        let id = $(this).attr('id');
        let num = id.split("-")[1];

        $(`#reply-container-${num}`).toggle();
    });
});