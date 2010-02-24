if (typeof JSON != 'undefined') {
  try {
    var json = document.getElementById('json');
    var data = JSON.parse(json.innerHTML);
    json.innerHTML = JSON.stringify(data, null, 3);
  } catch (e) {
  }
}

