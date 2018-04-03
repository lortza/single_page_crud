  document.addEventListener('DOMContentLoaded', function(){

    // Locate the filter field in the HTML
    const filter = document.querySelector('.filter > input');
    filter.addEventListener('keyup', filterCritters)

    const reset = document.querySelector('#reset-button');
    reset.addEventListener('click', resetResults)

    function filterCritters(e){
      // Capture the text from the filter input field
      let inputText = e.target.value.toLowerCase()
      // Grab all <tr>s that can be filtered and loop through them
      document.querySelectorAll('tbody > tr').forEach(function(tr){
        // Extract the text out of the tr
        const critterName = tr.querySelector('.name').textContent.toLowerCase()

        if(critterName.includes(inputText)){
          tr.style.display = ''
        } else {
          tr.style.display = 'none'
        }
      })
    }// end filterCritters

    function resetResults(e){
      document.querySelector('.filter > input').value = ''

      document.querySelectorAll('tbody > tr').forEach(function(tr){
        tr.style.display = ''
      })

      // Prevent the link from reloading the page
      e.preventDefault()
    }//end resetResults

  })
