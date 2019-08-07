
const AssistantV1 = require('ibm-watson/assistant/v1');

// letting the SDK manage the token
var assistant = new AssistantV1({
	  username: '6c699117-085a-4a58-99bd-5d6019549c2c',
	  password: 'HUnKkFP7EVIo',
	  version: '2018-02-16'
});

assistant.message({
	  workspace_id: 'efd583ff-2f58-435f-ac52-99a703ef58f2',
	  input: {'text': 'Hello'},
	  headers: {
	    'Custom-Header': 'custom',
	    'Accept-Language': 'custom'

	  }})
	  .then(result => {
	    console.log(JSON.stringify(result, null, 2));
	  })
	  .catch(err => {
	    console.log('error:', err);
	  });
