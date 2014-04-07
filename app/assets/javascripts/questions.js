
$(document).ready(function() {

  $(".upvote-button").on("click", function() {
    event.preventDefault();
    var id = $(this).data('id')

    var voteString = $( ".v" + id).text()
    var newVoteInt = parseInt(voteString) + 1
    var newVoteString = newVoteInt.toString()

    $.ajax({
      url: "/questions/upvote/" + id,
      type: "put",
      data: id
    }).done (function() {
    $(".v" + id).html( newVoteString );
    });
  });

  $(".downvote-button").on("click", function() {
    event.preventDefault();
    var id = $(this).data('id')

    var voteString = $( ".v" + id).text()
    var newVoteInt = parseInt(voteString) - 1
    var newVoteString = newVoteInt.toString()

    $.ajax({
      url: "/questions/downvote/" + id,
      type: "put",
      data: id
    }).done (function() {
    $(".v" + id).html( newVoteString );
    });

  });
});

