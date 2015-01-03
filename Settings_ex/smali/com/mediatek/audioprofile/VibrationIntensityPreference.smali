.class public Lcom/mediatek/audioprofile/VibrationIntensityPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "VibrationIntensityPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityManager;,
        Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;,
        Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;,
        Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I = null

.field private static final LOGV:Z = true

.field private static final SEEKBAR_ID:[I = null

.field private static final SEEKBAR_TYPE:[I = null

.field private static final SEEKBAR_TYPE_CALL:I = 0x0

.field private static final SEEKBAR_TYPE_GENERAL:I = 0x2

.field private static final SEEKBAR_TYPE_NOTIFICATION:I = 0x1

.field private static final SEEKBAR_UNMUTED_RES_ID:[I = null

.field private static final TAG:Ljava/lang/String; = "Settings/VibrationIntensityPref"


# instance fields
.field private mIsDlgDismissed:Z

.field private final mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private mProfileKey:Ljava/lang/String;

.field private final mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mSeekBarVolumizer:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;

.field private final mVibratorManager:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->SEEKBAR_ID:[I

    .line 87
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->SEEKBAR_TYPE:[I

    .line 93
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->CHECKBOX_VIEW_ID:[I

    .line 99
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 81
    :array_0
    .array-data 0x4
        0x8t 0x1t 0x8t 0x7ft
        0xat 0x1t 0x8t 0x7ft
        0xdt 0x1t 0x8t 0x7ft
    .end array-data

    .line 87
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 93
    :array_2
    .array-data 0x4
        0x7t 0x1t 0x8t 0x7ft
        0x9t 0x1t 0x8t 0x7ft
        0xct 0x1t 0x8t 0x7ft
    .end array-data

    .line 99
    :array_3
    .array-data 0x4
        0x8bt 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mIsDlgDismissed:Z

    .line 105
    new-instance v0, Lcom/mediatek/audioprofile/VibrationIntensityPreference$1;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$1;-><init>(Lcom/mediatek/audioprofile/VibrationIntensityPreference;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 150
    const v0, 0x7f040067

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 151
    const v0, 0x7f02009c

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogIcon(I)V

    .line 152
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mVibratorManager:Landroid/os/Vibrator;

    .line 154
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 156
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->setProfile(Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;

    .line 159
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/VibrationIntensityPreference;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mVibratorManager:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/VibrationIntensityPreference;)Lcom/mediatek/audioprofile/AudioProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    return-object v0
.end method


# virtual methods
.method public getProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x1

    .line 171
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 172
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 174
    .local v0, context:Landroid/content/Context;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mIsDlgDismissed:Z

    .line 175
    const-string v4, "Settings/VibrationIntensityPref"

    const-string v5, "set mIsDlgDismissed to false "

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->SEEKBAR_ID:[I

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 178
    sget-object v4, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->CHECKBOX_VIEW_ID:[I

    aget v4, v4, v1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 179
    .local v2, imageview:Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 180
    sget-object v4, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    :cond_0
    sget-object v4, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->SEEKBAR_ID:[I

    aget v4, v4, v1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 184
    .local v3, seekBar:Landroid/widget/SeekBar;
    if-eqz v3, :cond_2

    .line 185
    if-nez v1, :cond_1

    .line 186
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 188
    :cond_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;

    new-instance v5, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;

    sget-object v6, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->SEEKBAR_TYPE:[I

    aget v6, v6, v1

    invoke-direct {v5, p0, v0, v3, v6}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;-><init>(Lcom/mediatek/audioprofile/VibrationIntensityPreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v5, v4, v1

    .line 177
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v2           #imageview:Landroid/widget/ImageView;
    .end local v3           #seekBar:Landroid/widget/SeekBar;
    :cond_3
    iget-object v4, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v5, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    invoke-virtual {v4, v5, v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 192
    invoke-virtual {p1, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 193
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 6
    .parameter "isOK"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 229
    iget-object v4, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;

    if-nez v4, :cond_0

    .line 248
    :goto_0
    return-void

    .line 232
    :cond_0
    if-eqz p1, :cond_2

    .line 233
    iget-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;

    .local v0, arr$:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 234
    .local v3, vol:Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 235
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->saveVibrationIntensity()V

    .line 236
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 237
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->stop()V

    .line 238
    const/4 v3, 0x0

    .line 239
    const-string v4, "Settings/VibrationIntensityPref"

    const-string v5, "positiveResult saveVibrationIntensity"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    .end local v0           #arr$:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #vol:Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->revertVibrationIntensity()V

    .line 244
    const-string v4, "Settings/VibrationIntensityPref"

    const-string v5, "revertVibrationIntensity"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mIsDlgDismissed:Z

    .line 247
    const-string v4, "Settings/VibrationIntensityPref"

    const-string v5, "set mIsDlgDismissed to true"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 293
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 295
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 311
    :cond_1
    return-void

    :cond_2
    move-object v1, p1

    .line 299
    check-cast v1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;

    .line 300
    .local v1, myState:Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;
    invoke-virtual {v1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 301
    iget-object v4, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;

    if-eqz v4, :cond_1

    .line 302
    sget-object v4, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->SEEKBAR_ID:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->getVibrationIntensityStore(I)[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    move-result-object v2

    .line 304
    .local v2, vibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->SEEKBAR_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 305
    iget-object v4, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;

    aget-object v3, v4, v0

    .line 306
    .local v3, vol:Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;
    if-eqz v3, :cond_3

    .line 307
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->onRestoreInstanceState(Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;)V

    .line 304
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 261
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 262
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    .end local v2           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 267
    .restart local v2       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;

    invoke-direct {v1, v2}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 268
    .local v1, myState:Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;
    iget-object v5, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;

    if-eqz v5, :cond_2

    .line 269
    sget-object v5, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SavedState;->getVibrationIntensityStore(I)[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;

    move-result-object v3

    .line 271
    .local v3, vibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 272
    iget-object v5, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;

    aget-object v4, v5, v0

    .line 273
    .local v4, vol:Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;
    if-eqz v4, :cond_1

    .line 274
    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->onSaveInstanceState(Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;)V

    .line 271
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v3           #vibrationIntensityStore:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$VibrationIntensityStore;
    .end local v4           #vol:Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;
    :cond_2
    move-object v2, v1

    .line 278
    goto :goto_0
.end method

.method public revertVibrationIntensity()V
    .locals 4

    .prologue
    .line 205
    const-string v1, "Settings/VibrationIntensityPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsDlgDismissed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mIsDlgDismissed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-boolean v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mIsDlgDismissed:Z

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 211
    .local v0, vol:Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->revertVibrationIntensity()V

    .line 213
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/VibrationIntensityPreference$SeekBarVolumizer;->resume()V

    .line 214
    const-string v1, "Settings/VibrationIntensityPref"

    const-string v2, "revertVibrationIntensity"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    iput-object p1, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mProfileKey:Ljava/lang/String;

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v0, "mtk_audioprofile_general"

    iput-object v0, p0, Lcom/mediatek/audioprofile/VibrationIntensityPreference;->mProfileKey:Ljava/lang/String;

    goto :goto_0
.end method
