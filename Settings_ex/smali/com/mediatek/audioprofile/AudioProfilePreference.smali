.class public Lcom/mediatek/audioprofile/AudioProfilePreference;
.super Landroid/preference/Preference;
.source "AudioProfilePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioProfilePreference:"

.field private static final XLOGTAG:Ljava/lang/String; = "Settings/AudioP"

.field private static sActiveKey:Ljava/lang/String;

.field private static sCurrentChecked:Landroid/widget/CompoundButton;


# instance fields
.field private mCheckboxButton:Landroid/widget/RadioButton;

.field private mContext:Landroid/content/Context;

.field private mExt:Lcom/android/settings_ex/ext/IAudioProfileExt;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKey:Ljava/lang/String;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mPreferenceSummary:Ljava/lang/String;

.field private mPreferenceTitle:Ljava/lang/String;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

.field private mSummary:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 66
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    .line 72
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    .line 73
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 99
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mInflater:Landroid/view/LayoutInflater;

    .line 104
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 109
    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    .line 113
    :cond_1
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 116
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/android/settings_ex/ext/IAudioProfileExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/android/settings_ex/ext/IAudioProfileExt;

    .line 119
    return-void
.end method

.method static synthetic access$000()Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/CompoundButton;)Landroid/widget/CompoundButton;
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-object p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/AudioProfilePreference;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/AudioProfilePreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/AudioProfilePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    return-object v0
.end method


# virtual methods
.method public dynamicShowSummary()V
    .locals 5

    .prologue
    .line 237
    const-string v2, "Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioProfilePreference:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dynamicShowSummary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 241
    .local v0, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 247
    .local v1, vibrationEnabled:Z
    const-string v2, "Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioProfilePreference:vibrationEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-eqz v1, :cond_2

    .line 250
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0b007a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .end local v0           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v1           #vibrationEnabled:Z
    :cond_1
    :goto_0
    return-void

    .line 253
    .restart local v0       #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v1       #vibrationEnabled:Z
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0079

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    .end local v1           #vibrationEnabled:Z
    :cond_3
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 290
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 272
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioProfilePreference:onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz p2, :cond_1

    .line 275
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 278
    :cond_0
    sput-object p1, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 280
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 282
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 353
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    .line 166
    const-string v4, "Settings/AudioP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioProfilePreference:onCreateView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/android/settings_ex/ext/IAudioProfileExt;

    const v5, 0x7f04000a

    invoke-interface {v4, v5}, Lcom/android/settings_ex/ext/IAudioProfileExt;->createView(I)Landroid/view/View;

    move-result-object v3

    .line 169
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/android/settings_ex/ext/IAudioProfileExt;

    const v5, 0x7f080008

    invoke-interface {v4, v5}, Lcom/android/settings_ex/ext/IAudioProfileExt;->getPrefRadioButton(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 171
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/android/settings_ex/ext/IAudioProfileExt;

    const v5, 0x7f080009

    invoke-interface {v4, v5}, Lcom/android/settings_ex/ext/IAudioProfileExt;->getPreferenceTitle(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    .line 172
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/android/settings_ex/ext/IAudioProfileExt;

    const v5, 0x7f08000a

    invoke-interface {v4, v5}, Lcom/android/settings_ex/ext/IAudioProfileExt;->getPreferenceSummary(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    .line 174
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    new-instance v5, Lcom/mediatek/audioprofile/AudioProfilePreference$1;

    invoke-direct {v5, p0}, Lcom/mediatek/audioprofile/AudioProfilePreference$1;-><init>(Lcom/mediatek/audioprofile/AudioProfilePreference;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 203
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 204
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    .line 211
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/android/settings_ex/ext/IAudioProfileExt;

    const v5, 0x7f08000c

    invoke-interface {v4, v5}, Lcom/android/settings_ex/ext/IAudioProfileExt;->getPrefImageView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 213
    .local v0, detailsView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/android/settings_ex/ext/IAudioProfileExt;

    const v5, 0x7f08000b

    invoke-interface {v4, v5}, Lcom/android/settings_ex/ext/IAudioProfileExt;->getPrefImageView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 216
    .local v1, mDividerImage:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 217
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 218
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 219
    .local v2, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 221
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .end local v2           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_2
    :goto_1
    return-object v3

    .line 206
    .end local v0           #detailsView:Landroid/widget/ImageView;
    .end local v1           #mDividerImage:Landroid/widget/ImageView;
    :cond_3
    const-string v4, "Settings/AudioP"

    const-string v5, "AudioProfilePreference:PreferenceTitle is null"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .restart local v0       #detailsView:Landroid/widget/ImageView;
    .restart local v1       #mDividerImage:Landroid/widget/ImageView;
    .restart local v2       #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_4
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public setChecked()V
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 307
    :cond_0
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioProfilePreference:setChecked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 309
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 315
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    const-string v0, "Settings/AudioP"

    const-string v1, "AudioProfilePreference:mCheckboxButton is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 346
    return-void
.end method

.method public setProfileKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 154
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .locals 2
    .parameter "title"
    .parameter "setToProfile"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 327
    if-eqz p2, :cond_0

    .line 328
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :cond_1
    return-void
.end method
