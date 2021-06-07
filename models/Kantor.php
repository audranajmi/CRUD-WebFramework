<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "kantor".
 *
 * @property int $id_kantor
 * @property string $alamat
 *
 * @property Pegawai[] $pegawais
 */
class Kantor extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'kantor';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['alamat'], 'required'],
            [['alamat'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_kantor' => 'Id Kantor',
            'alamat' => 'Alamat',
        ];
    }

    /**
     * Gets query for [[Pegawais]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPegawais()
    {
        return $this->hasMany(Pegawai::className(), ['id_kantor' => 'id_kantor']);
    }
}
