.class public Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;
.super Ljava/lang/Object;
.source "VibrationIntensityPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/VibrationIntensityPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VibrationIntensityManager"
.end annotation


# static fields
.field private static final STR_VIBRATION_INTENSITY_DIR:Ljava/lang/String; = "/sys/vibrator_ops/intensity_level"

.field private static mSelf:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;


# instance fields
.field private final LEVEL_HIGH:C

.field private final LEVEL_LOW:C

.field private intensityLevel:C

.field private mLastChangedValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    const/16 v0, 0x30

    iput-char v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->LEVEL_LOW:C

    .line 762
    const/16 v0, 0x31

    iput-char v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->LEVEL_HIGH:C

    .line 766
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->mLastChangedValue:I

    return-void
.end method

.method static getInstance()Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;
    .locals 1

    .prologue
    .line 776
    sget-object v0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->mSelf:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;

    if-nez v0, :cond_0

    .line 777
    new-instance v0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;

    invoke-direct {v0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;-><init>()V

    sput-object v0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->mSelf:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;

    .line 779
    :cond_0
    sget-object v0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->mSelf:Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;

    return-object v0
.end method


# virtual methods
.method public changeVibrationIntensity(I)Z
    .locals 9
    .parameter "level"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 790
    const-string v6, "ro.product.board"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 791
    .local v3, productName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 792
    const-string v6, "Settings/VibrationIntensityPref"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeVibrationIntensity ProductName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string v6, "G610"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 796
    iget v6, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->mLastChangedValue:I

    if-eq v6, p1, :cond_0

    .line 797
    const/4 v1, 0x0

    .line 799
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v6, "/sys/vibrator_ops/intensity_level"

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 801
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    packed-switch p1, :pswitch_data_0

    .line 806
    const/16 v6, 0x30

    :try_start_1
    iput-char v6, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->intensityLevel:C

    .line 811
    :goto_0
    iget-char v6, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->intensityLevel:C

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write(I)V

    .line 812
    iput p1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->mLastChangedValue:I

    .line 813
    const-string v6, "Settings/VibrationIntensityPref"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeVibrationIntensity sucess intensity_level = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-char v8, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->intensityLevel:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 823
    if-eqz v2, :cond_0

    .line 825
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 835
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return v4

    .line 803
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :pswitch_0
    const/16 v6, 0x31

    :try_start_3
    iput-char v6, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;->intensityLevel:C
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 816
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 817
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    const-string v4, "Settings/VibrationIntensityPref"

    const-string v6, "changeVibrationIntensity error FileNotFoundException"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 823
    if-eqz v1, :cond_1

    .line 825
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    move v4, v5

    .line 828
    goto :goto_1

    .line 826
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 827
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Settings/VibrationIntensityPref"

    const-string v6, "changeVibrationIntensity close file error."

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 826
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 827
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Settings/VibrationIntensityPref"

    const-string v6, "changeVibrationIntensity close file error."

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 819
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 820
    .local v0, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v4, "Settings/VibrationIntensityPref"

    const-string v6, "changeVibrationIntensity error IOException"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 823
    if-eqz v1, :cond_2

    .line 825
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :goto_5
    move v4, v5

    .line 828
    goto :goto_1

    .line 826
    .restart local v0       #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 827
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Settings/VibrationIntensityPref"

    const-string v6, "changeVibrationIntensity close file error."

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 823
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_6
    if-eqz v1, :cond_3

    .line 825
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 828
    :cond_3
    :goto_7
    throw v4

    .line 826
    :catch_5
    move-exception v0

    .line 827
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "Settings/VibrationIntensityPref"

    const-string v6, "changeVibrationIntensity close file error."

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 823
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 819
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 816
    :catch_7
    move-exception v0

    goto :goto_2

    .line 801
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
