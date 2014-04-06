
$(document).ready(function() {

// below is draft
  $(".upvote-button").on("click", function() {
    var id = $(this).data('id')

    // mason will test the 3 lines below
    var voteString = $( ".v#{id}").text()
    var newVoteInt = parseInt(voteString) + 1
    var newVoteString = newVoteInt.toString()

    console.log(id)

    $.ajax({
      url: "/question/" + id
      type: PUT
      data: id
      // I am assuming dataType: is not needed
    }).done (function() {
    $(".v#{id}").html( newVoteString );
    });

    // update the vote number here
    // example $("body").append(data.author.name);
  });

  $(".upvote-button").on("click", function() {
    var id = $(this).data('id')

    var voteString = $( ".v#{id}").text()
    var newVoteInt = parseInt(voteString) - 1
    var newVoteString = newVoteInt.toString()

    console.log(id)
    $.ajax({
      url: // need URL  /question/decrease_vote
      type: GET
      data: id
    }).done (function() {
    $(".v#{id}").html( newVoteString );
    });

    // update the vote number here
    // example $("body").append(data.author.name);
  });



});

