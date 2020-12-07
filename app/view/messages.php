<?php if(is_error()): ?>


<div class="error"><?php echo error(); ?></div>


<?php endif; ?>



<?php if(is_success()): ?>


<div class="success"><?php echo success(); ?></div>


<?php endif; ?>