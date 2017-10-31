function previewFile() {
	var preview = document.createElement('img');
	var image_field = document.getElementById('image_field');

	var exsist_preview_image = document.getElementById('preview_image');

	if (exsist_preview_image) {
		exsist_preview_image.parentNode.removeChild(exsist_preview_image);
	}
	
	var file = document.querySelector('input[type=file]').files[0];
	var reader = new FileReader();

	reader.addEventListener("load", function() {
		preview.src = reader.result;
		preview.setAttribute('id', 'preview_image');
		image_field.style.display = 'block';
		image_field.appendChild(preview);
	}, false);

	if (file) {
		reader.readAsDataURL(file);
	}
};

function previewProfileImageFile() {
	var preview = document.createElement('img');
	var image_field = document.getElementById('profile_image');

	var exsist_preview_image = document.getElementById('preview_image');

	if (exsist_preview_image) {
		exsist_preview_image.parentNode.removeChild(exsist_preview_image);
	}
	
	var file = document.querySelector('input[type=file]').files[0];
	var reader = new FileReader();

	reader.addEventListener("load", function() {
		preview.src = reader.result;
		preview.setAttribute('id', 'preview_image');
		image_field.style.display = 'block';
		image_field.appendChild(preview);
	}, false);

	if (file) {
		reader.readAsDataURL(file);
	}
}
