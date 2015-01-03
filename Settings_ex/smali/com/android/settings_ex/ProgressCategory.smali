.class public Lcom/android/settings_ex/ProgressCategory;
.super Lcom/android/settings_ex/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private final mEmptyTextRes:I

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "emptyTextRes"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    .line 34
    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 35
    iput p3, p0, Lcom/android/settings_ex/ProgressCategory;->mEmptyTextRes:I

    .line 36
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 41
    const v4, 0x7f08011b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, progressBar:Landroid/view/View;
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v4, v5, :cond_3

    :cond_0
    move v0, v3

    .line 45
    .local v0, noDeviceFound:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    if-eqz v4, :cond_4

    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-boolean v4, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_5

    .line 48
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v3, :cond_2

    .line 49
    iget-object v3, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 50
    iput-boolean v2, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 64
    :cond_2
    :goto_2
    return-void

    .end local v0           #noDeviceFound:Z
    :cond_3
    move v0, v2

    .line 43
    goto :goto_0

    .line 45
    .restart local v0       #noDeviceFound:Z
    :cond_4
    const/16 v4, 0x8

    goto :goto_1

    .line 53
    :cond_5
    iget-boolean v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v4, :cond_2

    .line 54
    iget-object v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v4, :cond_6

    .line 55
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 56
    iget-object v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v5, 0x7f040068

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 57
    iget-object v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget v5, p0, Lcom/android/settings_ex/ProgressCategory;->mEmptyTextRes:I

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 58
    iget-object v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 60
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 61
    iput-boolean v3, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_2
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 72
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 73
    return-void
.end method

.method public setNoDeviceFoundAdded(Z)V
    .locals 0
    .parameter "noDeviceFoundAdded"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 82
    return-void
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    .line 77
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 78
    return-void
.end method
