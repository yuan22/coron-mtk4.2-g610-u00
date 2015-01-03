.class public Lcom/android/settings_ex/WallpaperTypeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WallpaperTypeSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private populateWallpaperTypes()V
    .locals 13

    .prologue
    .line 41
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, intent:Landroid/content/Intent;
    const/4 v9, 0x2

    .line 44
    .local v9, showOnlineWallpaperFlag:I
    const-string v10, "listToWallpaper"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 47
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/high16 v10, 0x1

    invoke-virtual {v5, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 50
    .local v8, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 51
    .local v4, parent:Landroid/preference/PreferenceScreen;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 53
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 54
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 55
    .local v6, pref:Landroid/preference/Preference;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 56
    .local v7, prefIntent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v12, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 58
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {v1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 60
    .local v3, label:Ljava/lang/CharSequence;
    if-nez v3, :cond_0

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 61
    :cond_0
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 64
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #label:Ljava/lang/CharSequence;
    .end local v6           #pref:Landroid/preference/Preference;
    .end local v7           #prefIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/WallpaperTypeSettings;->populateWallpaperTypes()V

    .line 37
    return-void
.end method
