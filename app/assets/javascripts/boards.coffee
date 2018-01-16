$("#addExistingButton").click ->
  $("#modalOptions").hide 500
  $("#modalExisting").show 500
  return

$("#addNewButton").click ->
  $("#modalOptions").hide 500
  $("#modalNew").show 500
  return

$("#modalClose").click ->
  $("#modalExisting").hide 0
  $("#modalNew").hide 0
  $("#modalOptions").show 0
  return
