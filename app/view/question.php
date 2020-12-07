<main class="main-content">
    <div class="container">
        
        <h3><?php echo $question; ?></h3>

        <div class="quiz-content flex">
            <label for="answer1" class="answer"><?php echo $answer1; ?></label>
            <label for="answer2" class="answer"><?php echo $answer2; ?></label>
            <?php if(!is_null($answer3)): ?>
            <label for="answer3" class="answer"><?php echo $answer3; ?></label>
            <?php endif; ?>
            <?php if(!is_null($answer4)): ?>
            <label for="answer4" class="answer"><?php echo $answer4; ?></label>
            <?php endif; ?>
        </div>

    </div>
    
</main>

<form action="proccess.php" method="post" id="answersForm" class="flex">
    <?php if($n > 0): ?>
    <button class="previousQuestionBtn" type="submit" name="prev">Prev</button>
    <?php endif; ?>
    <div class="input-answers">
        <input type="radio" id="answer1" name="answer" value='<?php echo $answer1; ?>'>
        <input type="radio" id="answer2" name="answer" value='<?php echo $answer2; ?>'>
        <?php if(!is_null($answer3)): ?>
        <input type="radio" id="answer3" name="answer" value='<?php echo $answer3; ?>'>
        <?php endif; ?>
        <?php if(!is_null($answer4)): ?>
        <input type="radio" id="answer4" name="answer" value='<?php echo $answer4; ?>'>
        <?php endif; ?>
    </div>
    <?php if(Session::questionsNotCompleted()): ?>
    <button class="nextQuestionBtn" type="submit" name="next">Next</button>
    <?php else: ?>
    <button class="finishQuizBtn" type="submit" name="finish">Finish</button>
    <?php endif; ?>
</form>

<div class="line"></div>
<div class="currentQuestionNum">
    <span><?php echo $currentNum; ?></span>
</div>