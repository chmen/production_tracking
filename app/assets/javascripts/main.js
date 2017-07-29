$('.add-assigment').click(function () {
 var gameId = $(this).data('game-id');
 var role = $(this).data('role');
 var gameName = $(this).data('game-name');
 $('#assignment_game_id').val(gameId);
 $('#assignment_role').val(role);
 $('#game-name').text(gameName);
});