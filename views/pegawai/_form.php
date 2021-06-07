<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\models\Pegawai */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pegawai-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nama_pegawai')->textInput(['maxlength' => true]) ?>

    <?php
        echo $form->field($model, 'tgl_lahir')->widget(DatePicker::classname(), [
            'options' => ['placeholder' => 'Pilih tanggal'],
            'pluginOptions' => ['autoclose'=>true, 'format' => 'dd-M-yyyy']
        ]);
    ?>

    <?php
        echo $form->field($model, 'jekel')->dropDownList(
            ['P' => 'PRIA', 'W' => 'WANITA']
        );
    ?>

    <?= $form->field($model, 'alamat')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'id_kantor')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
