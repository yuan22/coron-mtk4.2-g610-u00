.class public Lcom/mediatek/audioprofile/AudioProfileSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AudioProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;
    }
.end annotation


# static fields
.field private static final CUSTOMCATEGORY:Ljava/lang/String; = "custom"

.field private static final DIALOG_DELETE:I = 0x3

.field private static final DIALOG_ERROR:I = 0x1

.field private static final DIALOG_NAME:I = 0x0

.field private static final DIALOG_RESET:I = 0x2

.field private static final ERROR_COUNT_OVERFLOW:I = 0x2

.field private static final ERROR_NAME_EXIST:I = 0x0

.field private static final ERROR_NAME_LENGTH:I = 0x1

.field private static final GENERAL_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_general"

.field private static final GET_MUSIC_PLUS_STATUS:Ljava/lang/String; = "GetMusicPlusStatus"

.field private static final GET_MUSIC_PLUS_STATUS_ENABLED:Ljava/lang/String; = "GetMusicPlusStatus=1"

.field private static final H_RESET_SUCCESS:I = 0xb

.field private static final KEY_MUSIC_PLUS:Ljava/lang/String; = "music_plus"

.field private static final KEY_SOUND_ENAHCNE:Ljava/lang/String; = "sound_enhance"

.field private static final MEETING_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_meeting"

.field private static final MENUID_ADD:I = 0x1

.field private static final MENUID_DELETE:I = 0x4

.field private static final MENUID_ENABLE:I = 0x2

.field private static final MENUID_RENAME:I = 0x3

.field private static final MENUID_RESET:I = 0x2

.field private static final OUTDOOR_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_outdoor"

.field private static final PREDEFINEDCATEGORY:Ljava/lang/String; = "predefine"

.field private static final SET_MUSIC_PLUS_DISABLED:Ljava/lang/String; = "SetMusicPlusStatus=0"

.field private static final SET_MUSIC_PLUS_ENABLED:Ljava/lang/String; = "SetMusicPlusStatus=1"

.field private static final SILENT_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_silent"

.field private static final SOUND_PREFERENCE_NULL_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioProfileSettings:"

.field private static final VIBRATION_INTENSITY_PREF_CATEGORY_KEY:Ljava/lang/String; = "vibration_control"

.field private static final VIBRATION_INTENSITY_PREF_KEY:Ljava/lang/String; = "vibration_intensity"

.field private static final XLOGTAG:Ljava/lang/String; = "Settings/AudioP"


# instance fields
.field private mAudioEnhParent:Landroid/preference/PreferenceCategory;

.field private mAudioManager:Landroid/media/AudioManager;

.field public mCurrentDialogId:I

.field private mCustomParent:Landroid/preference/PreferenceCategory;

.field private mCustomerExist:Z

.field private mCustomerProfilePrefList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/audioprofile/AudioProfilePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultKey:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mErrorType:I

.field private mExt:Lcom/android/settings_ex/ext/IAudioProfileExt;

.field private mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private mMenuId:I

.field private mMusicPlusPrf:Landroid/preference/CheckBoxPreference;

.field private mPredefineParent:Landroid/preference/PreferenceCategory;

.field private mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private final mProfileSettingListener:Landroid/view/View$OnClickListener;

.field private mProfileTitle:[Ljava/lang/String;

.field private mRenameDialogtext:Ljava/lang/String;

.field private mVibrationInstensity:Lcom/mediatek/audioprofile/VibrationIntensityPreference;

.field private mVibrationInstensityParent:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    .line 115
    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    .line 118
    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 129
    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    .line 151
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/AudioProfileSettings$1;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 311
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileSettings$3;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/AudioProfileSettings$3;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    .line 685
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/AudioProfileSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfilePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/AudioProfileSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfilePreference;
    .locals 6
    .parameter "root"
    .parameter "key"

    .prologue
    .line 286
    invoke-static {p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 287
    .local v2, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    const/4 v1, 0x0

    .line 288
    .local v1, preference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    new-instance v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .end local v1           #preference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;)V

    .line 290
    .restart local v1       #preference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    invoke-virtual {v1, p2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setProfileKey(Ljava/lang/String;)V

    .line 292
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:Add into profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-boolean v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    if-nez v3, :cond_0

    .line 296
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 297
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 299
    :cond_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 301
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 304
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setTitle(Ljava/lang/String;Z)V

    .line 305
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private dynamicshowSummary()V
    .locals 3

    .prologue
    .line 340
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    .line 341
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 342
    .local v1, pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    goto :goto_0

    .line 344
    .end local v1           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    :cond_0
    return-void
.end method

.method private updateActivePreference()V
    .locals 5

    .prologue
    .line 326
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, key:Ljava/lang/String;
    const-string v2, "Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioProfileSettings:key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    .end local v1           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 330
    .local v0, activePreference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 333
    :cond_1
    return-void
.end method

.method private updatePreferenceHierarchy()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 241
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 243
    .local v4, root:Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllProfileKeys()Ljava/util/List;

    move-result-object v3

    .line 244
    .local v3, profileKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 245
    const-string v6, "Settings/AudioP"

    const-string v7, "AudioProfileSettings:profileKey size is 0"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    return-void

    .line 248
    :cond_0
    const-string v7, "Settings/AudioP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioProfileSettings:profileKey size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 251
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 252
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    iput-boolean v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 263
    :cond_1
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string v8, "GetMusicPlusStatus"

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, state:Ljava/lang/String;
    const-string v7, "Settings/AudioP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioProfileSettings:get the state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, isChecked:Z
    if-eqz v5, :cond_2

    .line 267
    const-string v7, "GetMusicPlusStatus=1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v1, 0x1

    .line 270
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMusicPlusPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 255
    .end local v1           #isChecked:Z
    .end local v5           #state:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 256
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 257
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    .local v2, profileKey:Ljava/lang/String;
    invoke-direct {p0, v4, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfilePreference;

    goto :goto_2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #profileKey:Ljava/lang/String;
    .restart local v1       #isChecked:Z
    .restart local v5       #state:Ljava/lang/String;
    :cond_4
    move v1, v6

    .line 267
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 613
    const-string v3, "Settings/AudioP"

    const-string v4, "onClick"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 616
    const-string v3, "Settings/AudioP"

    const-string v4, "return"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    packed-switch v3, :pswitch_data_0

    .line 679
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:unrecongnized dialog id is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 621
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    if-nez v3, :cond_2

    const-string v2, ""

    .line 623
    .local v2, title:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 624
    iput v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 625
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 621
    .end local v2           #title:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 626
    .restart local v2       #title:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isNameExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 627
    iput v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 628
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 630
    :cond_4
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v7, :cond_6

    .line 631
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->addProfile()Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, profileKey:Ljava/lang/String;
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:add profile Key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/mediatek/audioprofile/AudioProfileSettings;->addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfilePreference;

    move-result-object v0

    .line 637
    .local v0, activePreference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    if-nez v0, :cond_5

    .line 638
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 639
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    goto/16 :goto_0

    .line 641
    :cond_5
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 643
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    goto/16 :goto_0

    .line 646
    .end local v0           #activePreference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    .end local v1           #profileKey:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3, v2, v7}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setTitle(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 651
    .end local v2           #title:Ljava/lang/String;
    :pswitch_1
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 652
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_0

    .line 656
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 657
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 658
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 660
    :cond_7
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->deleteProfile(Ljava/lang/String;)Z

    .line 661
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 662
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 663
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 664
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 665
    iput-boolean v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    goto/16 :goto_0

    .line 669
    :pswitch_3
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_8

    .line 670
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 671
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 672
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 673
    iput-boolean v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 675
    :cond_8
    const-string v3, "predefine"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 676
    new-instance v3, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;Lcom/mediatek/audioprofile/AudioProfileSettings$1;)V

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 502
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 504
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 506
    .local v1, pref:Landroid/preference/Preference;
    instance-of v4, v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    if-eqz v4, :cond_0

    .line 507
    check-cast v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .end local v1           #pref:Landroid/preference/Preference;
    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 508
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 524
    :goto_0
    return v2

    .line 510
    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 513
    :pswitch_1
    iput v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    .line 514
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 517
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    goto :goto_0

    .restart local v1       #pref:Landroid/preference/Preference;
    :cond_0
    move v2, v3

    .line 524
    goto :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 171
    const-string v3, "Settings/AudioP"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/android/settings_ex/ext/IAudioProfileExt;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mExt:Lcom/android/settings_ex/ext/IAudioProfileExt;

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    .line 177
    const-string v3, "audioprofile"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 178
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 179
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 180
    .local v2, root:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 183
    :cond_0
    const v3, 0x7f050009

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 184
    const-string v3, "custom"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    .line 186
    const-string v3, "mtk_audioprofile_general"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 187
    .local v0, pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const-string v3, "mtk_audioprofile_silent"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 189
    .restart local v0       #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const-string v3, "mtk_audioprofile_meeting"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 191
    .restart local v0       #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const-string v3, "mtk_audioprofile_outdoor"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 193
    .restart local v0       #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mtk_audioprofile_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    .line 197
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/audioprofile/AudioProfilePreference;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 199
    new-instance v3, Lcom/mediatek/audioprofile/AudioProfileSettings$2;

    invoke-direct {v3, p0}, Lcom/mediatek/audioprofile/AudioProfileSettings$2;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    .line 208
    const-string v3, "music_plus"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMusicPlusPrf:Landroid/preference/CheckBoxPreference;

    .line 209
    const-string v3, "sound_enhance"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioEnhParent:Landroid/preference/PreferenceCategory;

    .line 215
    const-string v3, "ro.product.board"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, productName:Ljava/lang/String;
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:productName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v3, "G610"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    const-string v3, "vibration_control"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mVibrationInstensityParent:Landroid/preference/PreferenceCategory;

    .line 221
    const-string v3, "vibration_intensity"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/audioprofile/VibrationIntensityPreference;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mVibrationInstensity:Lcom/mediatek/audioprofile/VibrationIntensityPreference;

    .line 222
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mVibrationInstensityParent:Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mVibrationInstensity:Lcom/mediatek/audioprofile/VibrationIntensityPreference;

    if-eqz v3, :cond_1

    .line 223
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mVibrationInstensityParent:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mVibrationInstensity:Lcom/mediatek/audioprofile/VibrationIntensityPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mVibrationInstensityParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    :cond_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioEnhParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 230
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioEnhParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 233
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    .line 473
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 474
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 475
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 477
    .local v2, pref:Landroid/preference/Preference;
    instance-of v4, v2, Lcom/mediatek/audioprofile/AudioProfilePreference;

    if-eqz v4, :cond_0

    .line 478
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, key:Ljava/lang/String;
    check-cast v2, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .end local v2           #pref:Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    .line 480
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 481
    const/4 v4, 0x2

    const v5, 0x7f0b0080

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 482
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v3

    .line 483
    .local v3, senario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 484
    const/4 v4, 0x3

    const v5, 0x7f0b0081

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 486
    const/4 v4, 0x4

    const v5, 0x7f0b0082

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 490
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #senario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v6, 0x1080027

    const/high16 v10, 0x104

    const/4 v9, 0x0

    const v8, 0x104000a

    const/4 v5, 0x1

    .line 540
    const/4 v1, 0x0

    .line 541
    .local v1, dialog:Landroid/app/Dialog;
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    .line 542
    if-nez p1, :cond_4

    .line 543
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040037

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 545
    .local v0, content:Landroid/view/View;
    const v3, 0x7f08007f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    .line 546
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 547
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    const v4, 0x10001

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 549
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v5, :cond_2

    const-string v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v5, :cond_3

    const v3, 0x7f0b007f

    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0084

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 560
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 601
    .end local v0           #content:Landroid/view/View;
    :cond_1
    :goto_2
    return-object v1

    .line 549
    .restart local v0       #content:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    goto :goto_0

    .line 552
    :cond_3
    const v3, 0x7f0b0081

    goto :goto_1

    .line 564
    .end local v0           #content:Landroid/view/View;
    :cond_4
    if-ne p1, v5, :cond_5

    .line 565
    const/4 v2, 0x0

    .line 566
    .local v2, stringId:I
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    packed-switch v3, :pswitch_data_0

    .line 579
    :goto_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b014c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 584
    goto :goto_2

    .line 568
    :pswitch_0
    const v2, 0x7f0b0088

    .line 569
    goto :goto_3

    .line 571
    :pswitch_1
    const v2, 0x7f0b0085

    .line 572
    goto :goto_3

    .line 574
    :pswitch_2
    const v2, 0x7f0b0086

    .line 575
    goto :goto_3

    .line 584
    .end local v2           #stringId:I
    :cond_5
    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 585
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b007e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0083

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_2

    .line 591
    :cond_6
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 592
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0082

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0087

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_2

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 422
    const/4 v0, 0x1

    const v1, 0x7f0b007f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 428
    const/4 v0, 0x2

    const v1, 0x7f0b007e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 432
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 443
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 444
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileCount()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 445
    iput v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 446
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 456
    :goto_0
    return v0

    .line 449
    :cond_0
    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    .line 450
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 452
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 453
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 456
    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 369
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 370
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 372
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 384
    instance-of v0, p2, Lcom/mediatek/audioprofile/AudioProfilePreference;

    if-eqz v0, :cond_0

    move-object v10, p2

    .line 385
    check-cast v10, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 386
    .local v10, pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    invoke-virtual {v10}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 387
    .local v9, key:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mExt:Lcom/android/settings_ex/ext/IAudioProfileExt;

    invoke-interface {v0}, Lcom/android/settings_ex/ext/IAudioProfileExt;->isPrefEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v2, args:Landroid/os/Bundle;
    const-string v0, "profileKey"

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/mediatek/audioprofile/Editprofile;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 399
    .end local v2           #args:Landroid/os/Bundle;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMusicPlusPrf:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_1

    move-object v0, p2

    .line 400
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    .line 401
    .local v8, enabled:Z
    if-eqz v8, :cond_3

    const-string v7, "SetMusicPlusStatus=1"

    .line 402
    .local v7, cmdStr:Ljava/lang/String;
    :goto_1
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioProfileSettings: set command about music plus: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 407
    .end local v7           #cmdStr:Ljava/lang/String;
    .end local v8           #enabled:Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 393
    .restart local v9       #key:Ljava/lang/String;
    .restart local v10       #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0, v9}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    goto :goto_0

    .line 401
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    .restart local v8       #enabled:Z
    :cond_3
    const-string v7, "SetMusicPlusStatus=0"

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 351
    const-string v0, "Settings/AudioP"

    const-string v1, "AudioProfileSettings:onResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 354
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->updatePreferenceHierarchy()V

    .line 356
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->dynamicshowSummary()V

    .line 357
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->updateActivePreference()V

    .line 359
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 360
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 362
    return-void
.end method
