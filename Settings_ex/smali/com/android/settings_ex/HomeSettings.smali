.class public Lcom/android/settings_ex/HomeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "HomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    }
.end annotation


# static fields
.field private static final HOME_CLASS_NAME:Ljava/lang/String; = "home_class_name"

.field private static final HOME_PACKAGE_NAME:Ljava/lang/String; = "home_package_name"

.field public static final HOME_PREFS:Ljava/lang/String; = "home_prefs"

.field public static final HOME_PREFS_DO_SHOW:Ljava/lang/String; = "do_show"

.field public static final HOME_SHOW_NOTICE:Ljava/lang/String; = "show"

.field private static final IS_USER_CONFIRMED:Ljava/lang/String; = "is_user_confirmed"

.field static final REQUESTING_UNINSTALL:I = 0xa

.field static final TAG:Ljava/lang/String; = "HomeSettings"

.field private static final WARNING_DIALOG_TITLE:Ljava/lang/String; = "warning_dialog_title"


# instance fields
.field mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

.field mDeleteClickListener:Landroid/view/View$OnClickListener;

.field mHomeClickListener:Landroid/view/View$OnClickListener;

.field mHomeComponentSet:[Landroid/content/ComponentName;

.field final mHomeFilter:Landroid/content/IntentFilter;

.field private mIsUserConfirmed:Z

.field mPm:Landroid/content/pm/PackageManager;

.field mPrefGroup:Landroid/preference/PreferenceGroup;

.field mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/HomeSettings$HomeAppPreference;",
            ">;"
        }
    .end annotation
.end field

.field mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

.field mWarningDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 74
    iput-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 105
    new-instance v0, Lcom/android/settings_ex/HomeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/HomeSettings$1;-><init>(Lcom/android/settings_ex/HomeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    .line 128
    new-instance v0, Lcom/android/settings_ex/HomeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/HomeSettings$2;-><init>(Lcom/android/settings_ex/HomeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private findPreference(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    .locals 5
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, homePref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v0, c:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 201
    .local v3, pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    iget-object v4, v3, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    move-object v1, v3

    .line 206
    .end local v3           #pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    :cond_1
    return-object v1
.end method

.method private setAndRestartHomeApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/HomeSettings;->findPreference(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    move-result-object v0

    .line 184
    .local v0, homePref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/HomeSettings;->setAndRestartHomeApp(Lcom/android/settings_ex/HomeSettings$HomeAppPreference;)V

    goto :goto_0
.end method

.method private setDefaultHomeComponent(Lcom/android/settings_ex/HomeSettings$HomeAppPreference;)V
    .locals 5
    .parameter "newHome"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    iget-object v1, v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 148
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 149
    iput-object p1, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings_ex/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const/high16 v2, 0x10

    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 154
    return-void
.end method


# virtual methods
.method buildWarningDialog(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "label"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/settings_ex/HomeSettings;->mWarningDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 92
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 94
    const v1, 0x7f0b0984

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 95
    const v1, 0x7f0b0985

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    const v1, 0x7f0b034c

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/HomeSettings;->mWarningDialog:Landroid/app/AlertDialog;

    .line 98
    iget-object v1, p0, Lcom/android/settings_ex/HomeSettings;->mWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public getHomeActivities(Ljava/util/ArrayList;)Landroid/content/ComponentName;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .local p1, allHomeCandidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 253
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v8, p0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 256
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 257
    if-eqz v5, :cond_0

    .line 258
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 259
    .local v6, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v1, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 265
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v2, filters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v8, p0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v2, v0, v7}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 271
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 274
    :cond_1
    :goto_1
    return-object v7

    :cond_2
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/HomeSettings;->refreshUI()V

    .line 229
    const/16 v2, 0xa

    if-le p1, v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    if-nez v2, :cond_0

    .line 235
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 237
    .local v1, pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    iget-boolean v2, v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isSystem:Z

    if-eqz v2, :cond_1

    .line 238
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/HomeSettings;->setAndRestartHomeApp(Lcom/android/settings_ex/HomeSettings$HomeAppPreference;)V

    .line 244
    .end local v0           #i:I
    .end local v1           #pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    :cond_0
    return-void

    .line 235
    .restart local v0       #i:I
    .restart local v1       #pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 393
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mWarningDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 394
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/HomeSettings;->mIsUserConfirmed:Z

    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/HomeSettings;->setAndRestartHomeApp(Lcom/android/settings_ex/HomeSettings$HomeAppPreference;)V

    .line 398
    iput-object v1, p0, Lcom/android/settings_ex/HomeSettings;->mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 402
    iput-object v1, p0, Lcom/android/settings_ex/HomeSettings;->mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 342
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 343
    const v4, 0x7f05001c

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 345
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 346
    const-string v4, "home"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    .line 348
    invoke-virtual {p0}, Lcom/android/settings_ex/HomeSettings;->refreshUI()V

    .line 350
    if-nez p1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    const-string v4, "home_package_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, pkgName:Ljava/lang/String;
    const-string v4, "home_class_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, clsName:Ljava/lang/String;
    const-string v4, "is_user_confirmed"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 363
    .local v1, isConfirmed:Z
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 364
    if-eqz v1, :cond_2

    .line 366
    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/HomeSettings;->setAndRestartHomeApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/HomeSettings;->findPreference(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 372
    const-string v4, "warning_dialog_title"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, title:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/HomeSettings;->buildWarningDialog(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mWarningDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_1

    .line 381
    iget-boolean v0, p0, Lcom/android/settings_ex/HomeSettings;->mIsUserConfirmed:Z

    if-nez v0, :cond_0

    .line 384
    iput-object v1, p0, Lcom/android/settings_ex/HomeSettings;->mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 387
    iput-object v1, p0, Lcom/android/settings_ex/HomeSettings;->mWarningDialog:Landroid/app/AlertDialog;

    .line 389
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 409
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 411
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    iget-object v3, v3, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    iget-object v0, v3, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    .line 418
    .local v0, c:Landroid/content/ComponentName;
    const-string v3, "home_package_name"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v3, "home_class_name"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 421
    .local v1, titleChar:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, titleStr:Ljava/lang/String;
    :goto_1
    const-string v3, "warning_dialog_title"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v3, "is_user_confirmed"

    iget-boolean v4, p0, Lcom/android/settings_ex/HomeSettings;->mIsUserConfirmed:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 421
    .end local v2           #titleStr:Ljava/lang/String;
    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method refreshUI()V
    .locals 17

    .prologue
    .line 283
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v13, homeActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/HomeSettings;->getHomeActivities(Ljava/util/ArrayList;)Landroid/content/ComponentName;

    move-result-object v11

    .line 286
    .local v11, currentDefaultHome:Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 287
    .local v3, context:Landroid/content/Context;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 288
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 290
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    .line 292
    const/4 v5, 0x0

    .line 294
    .local v5, prefIndex:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    const/4 v15, 0x1

    .line 296
    .local v15, isOnlyOneHomeLeft:Z
    :goto_0
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_4

    .line 297
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 298
    .local v10, candidate:Landroid/content/pm/ResolveInfo;
    iget-object v9, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 299
    .local v9, info:Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .local v4, activityName:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    aput-object v4, v2, v14

    .line 302
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 303
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 304
    .local v7, name:Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    move-object/from16 v2, p0

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;-><init>(Lcom/android/settings_ex/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings_ex/HomeSettings;Landroid/content/pm/ActivityInfo;)V

    .line 306
    .local v1, pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 308
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 314
    if-nez v11, :cond_0

    if-nez v15, :cond_1

    iget-boolean v2, v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isSystem:Z

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v4, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    :cond_1
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 296
    .end local v1           #pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #name:Ljava/lang/CharSequence;
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 294
    .end local v4           #activityName:Landroid/content/ComponentName;
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v10           #candidate:Landroid/content/pm/ResolveInfo;
    .end local v14           #i:I
    .end local v15           #isOnlyOneHomeLeft:Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 320
    .restart local v4       #activityName:Landroid/content/ComponentName;
    .restart local v9       #info:Landroid/content/pm/ActivityInfo;
    .restart local v10       #candidate:Landroid/content/pm/ResolveInfo;
    .restart local v14       #i:I
    .restart local v15       #isOnlyOneHomeLeft:Z
    :catch_0
    move-exception v12

    .line 321
    .local v12, e:Ljava/lang/Exception;
    const-string v2, "HomeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Problem dealing with activity "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 325
    .end local v4           #activityName:Landroid/content/ComponentName;
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v10           #candidate:Landroid/content/pm/ResolveInfo;
    .end local v12           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    if-eqz v2, :cond_6

    .line 326
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/settings_ex/HomeSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/settings_ex/HomeSettings$3;-><init>(Lcom/android/settings_ex/HomeSettings;)V

    invoke-virtual {v2, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    :cond_5
    :goto_3
    return-void

    .line 333
    :cond_6
    if-eqz v11, :cond_5

    .line 334
    const-string v2, "HomeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getHomeActivitys return package:"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v2, "HomeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getHomeActivitys return class:"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method setAndRestartHomeApp(Lcom/android/settings_ex/HomeSettings$HomeAppPreference;)V
    .locals 2
    .parameter "newHome"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/settings_ex/HomeSettings;->setDefaultHomeComponent(Lcom/android/settings_ex/HomeSettings$HomeAppPreference;)V

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/HomeSettings;->mTempSelectedHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/HomeSettings;->mIsUserConfirmed:Z

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, startMain:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 173
    return-void
.end method

.method uninstallApp(Lcom/android/settings_ex/HomeSettings$HomeAppPreference;)V
    .locals 6
    .parameter "pref"

    .prologue
    const/4 v3, 0x0

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 216
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 217
    .local v2, uninstallIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    iget-boolean v4, p1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v1, v3, 0xa

    .line 219
    .local v1, requestCode:I
    invoke-virtual {p0, v2, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    return-void
.end method
