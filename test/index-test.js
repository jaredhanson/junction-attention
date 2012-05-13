var vows = require('vows');
var assert = require('assert');
var attention = require('index');


vows.describe('junction-attention').addBatch({
  
  'module': {
    'should export middleware': function () {
      assert.isFunction(attention);
      assert.isFunction(attention.attentionParser);
    },
  },
  
}).export(module);
