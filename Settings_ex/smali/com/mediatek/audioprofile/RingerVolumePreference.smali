.class public Lcom/mediatek/audioprofile/RingerVolumePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeReceiver;,
        Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;,
        Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;,
        Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I = null

.field private static final LOGV:Z = true

.field private static final SEEKBAR_ID:[I = null

.field private static final SEEKBAR_TYPE:[I = null

.field private static final SEEKBAR_UNMUTED_RES_ID:[I = null

.field private static final STREAM_TYPE:[I = null

.field private static final TAG:Ljava/lang/String; = "Settings/VolPref"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mExt:Lcom/android/settings_ex/ext/IAudioProfileExt;

.field private mIsDlgDismissed:Z

.field private mKey:Ljava/lang/String;

.field private final mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private final mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mReceiver:Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeReceiver;

.field private mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    .line 105
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/audioprofile/RingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 109
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/audioprofile/RingerVolumePreference;->STREAM_TYPE:[I

    .line 113
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/audioprofile/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    .line 119
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/mediatek/audioprofile/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 101
    nop

    :array_0
    .array-data 0x4
        0x2t 0x1t 0x8t 0x7ft
        0xfet 0x0t 0x8t 0x7ft
        0x4t 0x1t 0x8t 0x7ft
    .end array-data

    .line 105
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 109
    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 113
    :array_3
    .array-data 0x4
        0xfdt 0x0t 0x8t 0x7ft
        0x1t 0x1t 0x8t 0x7ft
        0x3t 0x1t 0x8t 0x7ft
    .end array-data

    .line 119
    :array_4
    .array-data 0x4
        0x5at 0x0t 0x3t 0x3t
        0x56t 0x0t 0x3t 0x3t
        0x52t 0x0t 0x3t 0x3t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mIsDlgDismissed:Z

    .line 911
    new-instance v0, Lcom/mediatek/audioprofile/RingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/RingerVolumePreference$1;-><init>(Lcom/mediatek/audioprofile/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 146
    const v0, 0x7f040066

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 147
    const v0, 0x7f02009c

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogIcon(I)V

    .line 148
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 150
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 152
    sget-object v0, Lcom/mediatek/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    .line 153
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/android/settings_ex/ext/IAudioProfileExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mExt:Lcom/android/settings_ex/ext/IAudioProfileExt;

    .line 154
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/mediatek/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/RingerVolumePreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/android/settings_ex/ext/IAudioProfileExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mExt:Lcom/android/settings_ex/ext/IAudioProfileExt;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/audioprofile/RingerVolumePreference;)[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    return-object v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 164
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 166
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    .local v0, context:Landroid/content/Context;
    new-instance v7, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeReceiver;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeReceiver;-><init>(Lcom/mediatek/audioprofile/RingerVolumePreference;Lcom/mediatek/audioprofile/RingerVolumePreference$1;)V

    iput-object v7, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mReceiver:Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeReceiver;

    .line 168
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v7, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v7, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mReceiver:Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeReceiver;

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    iput-boolean v10, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mIsDlgDismissed:Z

    .line 173
    const-string v7, "Settings/VolPref"

    const-string v8, "set mIsDlgDismissed to false "

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v7, Lcom/mediatek/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v7, v7

    if-ge v3, v7, :cond_3

    .line 176
    sget-object v7, Lcom/mediatek/audioprofile/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v7, v7, v3

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 178
    .local v5, imageview:Landroid/widget/ImageView;
    if-eqz v5, :cond_0

    .line 179
    sget-object v7, Lcom/mediatek/audioprofile/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v7, v7, v3

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    :cond_0
    sget-object v7, Lcom/mediatek/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v7, v7, v3

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    .line 183
    .local v6, seekBar:Landroid/widget/SeekBar;
    if-eqz v6, :cond_2

    .line 184
    if-nez v3, :cond_1

    .line 185
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 187
    :cond_1
    iget-object v7, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    new-instance v8, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    sget-object v9, Lcom/mediatek/audioprofile/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v9, v9, v3

    invoke-direct {v8, p0, v0, v6, v9}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;-><init>(Lcom/mediatek/audioprofile/RingerVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v8, v7, v3

    .line 189
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 175
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    .end local v5           #imageview:Landroid/widget/ImageView;
    .end local v6           #seekBar:Landroid/widget/SeekBar;
    :cond_3
    invoke-virtual {p1, v11}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 197
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 198
    const v4, 0x7f0800ff

    .line 199
    .local v4, id:I
    iget-object v7, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    aget-object v7, v7, v10

    invoke-virtual {v7, v10}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->setVisible(Z)V

    .line 204
    :goto_1
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 206
    .local v2, hideSection:Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v7, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v8, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 210
    return-void

    .line 201
    .end local v2           #hideSection:Landroid/view/View;
    .end local v4           #id:I
    :cond_4
    const v4, 0x7f0800fb

    .line 202
    .restart local v4       #id:I
    iget-object v7, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    aget-object v7, v7, v11

    invoke-virtual {v7, v10}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->setVisible(Z)V

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 7
    .parameter "positiveResult"

    .prologue
    const/4 v6, 0x0

    .line 312
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 313
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    if-nez v4, :cond_0

    .line 344
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 317
    .local v3, vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 319
    .end local v3           #vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    :cond_1
    if-eqz p1, :cond_3

    .line 320
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 321
    .restart local v3       #vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 322
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->saveVolume()V

    .line 323
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 324
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->stop()V

    .line 320
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 329
    .end local v3           #vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    :cond_3
    const-string v4, "Settings/VolPref"

    const-string v5, "Cacel: Original checked."

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 331
    .restart local v3       #vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 332
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 333
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 334
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->stop()V

    .line 330
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 339
    .end local v3           #vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mIsDlgDismissed:Z

    .line 340
    const-string v4, "Settings/VolPref"

    const-string v5, "set mIsDlgDismissed to true"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mReceiver:Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 342
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v5, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 260
    iget-object v7, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    if-nez v7, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v5

    .line 264
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    .line 265
    .local v2, isdown:Z
    :goto_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 266
    .local v4, vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 268
    packed-switch p2, :pswitch_data_0

    move v5, v6

    .line 280
    goto :goto_0

    .end local v0           #arr$:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    .end local v1           #i$:I
    .end local v2           #isdown:Z
    .end local v3           #len$:I
    .end local v4           #vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    :cond_2
    move v2, v6

    .line 264
    goto :goto_1

    .line 270
    .restart local v0       #arr$:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    .restart local v1       #i$:I
    .restart local v2       #isdown:Z
    .restart local v3       #len$:I
    .restart local v4       #vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    :pswitch_0
    if-eqz v2, :cond_0

    .line 271
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 275
    :pswitch_1
    if-eqz v2, :cond_0

    .line 276
    invoke-virtual {v4, v5}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 265
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 383
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 385
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 401
    :cond_1
    return-void

    :cond_2
    move-object v1, p1

    .line 389
    check-cast v1, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;

    .line 390
    .local v1, myState:Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;
    invoke-virtual {v1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 391
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    if-eqz v4, :cond_1

    .line 392
    sget-object v4, Lcom/mediatek/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->getVolumeStore(I)[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    move-result-object v3

    .line 394
    .local v3, volumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/mediatek/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 395
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    aget-object v2, v4, v0

    .line 396
    .local v2, vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v2, :cond_3

    .line 397
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;)V

    .line 394
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 294
    if-nez p1, :cond_1

    .line 302
    :cond_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 298
    .local v3, vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_2

    if-eq v3, p1, :cond_2

    .line 299
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 297
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 355
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 356
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 372
    .end local v2           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 361
    .restart local v2       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 362
    .local v1, myState:Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;
    iget-object v5, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    if-eqz v5, :cond_2

    .line 363
    sget-object v5, Lcom/mediatek/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->getVolumeStore(I)[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    move-result-object v4

    .line 365
    .local v4, volumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/mediatek/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 366
    iget-object v5, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 367
    .local v3, vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 368
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->onSaveInstanceState(Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;)V

    .line 365
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v3           #vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    .end local v4           #volumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;
    :cond_2
    move-object v2, v1

    .line 372
    goto :goto_0
.end method

.method public revertVolume()V
    .locals 7

    .prologue
    .line 233
    const-string v4, "Settings/VolPref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsDlgDismissed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mIsDlgDismissed:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-boolean v4, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mIsDlgDismissed:Z

    if-eqz v4, :cond_1

    .line 245
    :cond_0
    return-void

    .line 237
    :cond_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    if-eqz v4, :cond_0

    .line 238
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 239
    .local v3, vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_2

    .line 240
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 241
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->resume()V

    .line 238
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public stopPlaying()V
    .locals 6

    .prologue
    .line 217
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    if-eqz v4, :cond_1

    .line 218
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 219
    .local v3, vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    const-string v4, "Settings/VolPref"

    const-string v5, "IsPlaying"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 222
    const-string v4, "Settings/VolPref"

    const-string v5, "stopPlaying"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v0           #arr$:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #vol:Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method
