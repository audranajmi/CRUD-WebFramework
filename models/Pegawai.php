<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pegawai".
 *
 * @property int $id_pegawai
 * @property string $nama_pegawai
 * @property string $tgl_lahir
 * @property string $jekel
 * @property string $alamat
 * @property string $email
 * @property int $id_kantor
 *
 * @property Kantor $kantor
 */
class Pegawai extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pegawai';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama_pegawai', 'tgl_lahir', 'jekel', 'alamat', 'email', 'id_kantor'], 'required'],
            [['id_kantor'], 'integer'],
            [['nama_pegawai'], 'string', 'max' => 50],
            [['tgl_lahir', 'email'], 'string', 'max' => 25],
            [['jekel'], 'string', 'max' => 20],
            [['alamat'], 'string', 'max' => 100],
            [['id_kantor'], 'exist', 'skipOnError' => true, 'targetClass' => Kantor::className(), 'targetAttribute' => ['id_kantor' => 'id_kantor']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_pegawai' => 'Id Pegawai',
            'nama_pegawai' => 'Nama Pegawai',
            'tgl_lahir' => 'Tgl Lahir',
            'jekel' => 'Jekel',
            'alamat' => 'Alamat',
            'email' => 'Email',
            'id_kantor' => 'Id Kantor',
        ];
    }

    /**
     * Gets query for [[Kantor]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getKantor()
    {
        return $this->hasOne(Kantor::className(), ['id_kantor' => 'id_kantor']);
    }
}
