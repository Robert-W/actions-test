const index = require('./index.js');

describe('Simple test', () => {
	
	test('Addition', () => {
		
		expect(index.add(2, 3)).toBe(5);
		
	});
	
});