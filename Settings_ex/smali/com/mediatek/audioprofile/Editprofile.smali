.class public Lcom/mediatek/audioprofile/Editprofile;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "Editprofile.java"


# static fields
.field public static final KEY_CATEGORY_NOTIFICATION:Ljava/lang/String; = "notifications"

.field public static final KEY_CATEGORY_RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final KEY_DTMF_TONE:Ljava/lang/String; = "audible_touch_tones"

.field public static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field public static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "screen_lock_sounds"

.field public static final KEY_NOTIFY:Ljava/lang/String; = "notifications_ringtone"

.field public static final KEY_RINGTONE:Ljava/lang/String; = "phone_ringtone"

.field public static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "audible_selection"

.field public static final KEY_VIBRATE:Ljava/lang/String; = "phone_vibrate"

.field public static final KEY_VIDEO_RINGTONE:Ljava/lang/String; = "video_call_ringtone"

.field public static final KEY_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final TAG:Ljava/lang/String; = "Settings/EditProfile"


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mCurOrientation:I

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mIsSilentMode:Z

.field private mKey:Ljava/lang/String;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mSettingsCursor:Landroid/database/Cursor;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mVibrat:Landroid/preference/CheckBoxPreference;

.field private mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/Editprofile;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/Editprofile;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/Editprofile;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private initPreference()V
    .locals 8

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 208
    .local v1, parent:Landroid/preference/PreferenceScreen;
    const-string v6, "phone_vibrate"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    .line 209
    const-string v6, "audible_touch_tones"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 210
    const-string v6, "audible_selection"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 211
    const-string v6, "screen_lock_sounds"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 212
    const-string v6, "haptic_feedback"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 213
    const-string v6, "ring_volume"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/mediatek/audioprofile/RingerVolumePreference;

    iput-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    .line 214
    const-string v6, "ringtone"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 215
    .local v3, parentRingtone:Landroid/preference/PreferenceGroup;
    const-string v6, "notifications"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 216
    .local v2, parentNotify:Landroid/preference/PreferenceGroup;
    const-string v6, "notifications_ringtone"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 220
    .local v0, notify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;
    iget-boolean v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    if-eqz v6, :cond_1

    .line 221
    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    if-eqz v6, :cond_2

    .line 231
    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/mediatek/audioprofile/RingerVolumePreference;->setProfile(Ljava/lang/String;)V

    .line 234
    :cond_2
    if-eqz v0, :cond_3

    .line 235
    const-string v6, "NOTIFICATION"

    invoke-virtual {v0, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 236
    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 237
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 240
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->isVoiceCapable()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 241
    const-string v6, "phone_ringtone"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 243
    .local v5, voiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;
    const-string v6, "video_call_ringtone"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 247
    .local v4, videoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    if-eqz v5, :cond_4

    .line 251
    const v6, 0x7f0b04e2

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 252
    const v6, 0x7f0b04e3

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 257
    :cond_4
    if-eqz v5, :cond_5

    .line 258
    const-string v6, "RING"

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 260
    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 261
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 265
    :cond_5
    if-eqz v4, :cond_0

    .line 266
    const-string v6, "RING"

    invoke-virtual {v4, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 268
    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 269
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    goto :goto_0

    .line 273
    .end local v4           #videoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;
    .end local v5           #voiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->isSmsCapable()Z

    move-result v6

    if-nez v6, :cond_7

    .line 274
    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 276
    :cond_7
    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 277
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private isSmsCapable()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceCapable()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePreference()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 286
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 287
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 288
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 289
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticFeedbackEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 291
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 366
    const-string v0, "Settings/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCurOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 369
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    if-eq v0, v1, :cond_0

    .line 370
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    .line 372
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    .line 373
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v4, 0x7f050019

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 111
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 113
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 114
    .local v1, parentActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 117
    .local v3, singlePane:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 118
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 123
    .local v0, bundle:Landroid/os/Bundle;
    :goto_1
    const-string v4, "Settings/EditProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate activity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",singlePane = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",bundle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v4, "profileKey"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    .line 128
    const-string v4, "audioprofile"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 129
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 131
    .local v2, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    .line 132
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    .line 134
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->initPreference()V

    .line 135
    return-void

    .line 114
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v3           #singlePane:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 121
    .restart local v3       #singlePane:Z
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .restart local v0       #bundle:Landroid/os/Bundle;
    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 180
    const-string v1, "Settings/EditProfile"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "Settings/EditProfile"

    const-string v2, "pref is not null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->stopPlaying()V

    .line 184
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->revertVolume()V

    .line 187
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-virtual {v1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 188
    .local v0, dlg:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 193
    .end local v0           #dlg:Landroid/app/Dialog;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v1, v2}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 198
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    .line 200
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 339
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone_vibrate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 341
    .local v0, isVibrate:Z
    const-string v1, "Settings/EditProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set vibrate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->setVibrationEnabled(Ljava/lang/String;Z)V

    .line 355
    .end local v0           #isVibrate:Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 343
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audible_touch_tones"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setDtmfToneEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audible_selection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 346
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setSoundEffectEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 348
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_lock_sounds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 349
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setLockScreenEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 350
    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "haptic_feedback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 300
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->updatePreference()V

    .line 302
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcom/mediatek/audioprofile/Editprofile$1;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/Editprofile$1;-><init>(Lcom/mediatek/audioprofile/Editprofile;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    .line 323
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 326
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    .line 168
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v7, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 170
    return-void
.end method
