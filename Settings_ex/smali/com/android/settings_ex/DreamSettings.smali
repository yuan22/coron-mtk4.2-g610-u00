.class public Lcom/android/settings_ex/DreamSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DreamSettings$PackageReceiver;,
        Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DIALOG_WHEN_TO_DREAM:I = 0x1

.field private static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

.field private mBackend:Lcom/android/settings_ex/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private final mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/settings_ex/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/DreamSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DreamSettings$PackageReceiver;-><init>(Lcom/android/settings_ex/DreamSettings;Lcom/android/settings_ex/DreamSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    .line 365
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DreamSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/settings_ex/DreamSettings;->mRefreshing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_ex/DreamBackend;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DreamSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings;->refreshFromBackend()V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2
    .parameter "menu"
    .parameter "titleRes"
    .parameter "actionEnum"
    .parameter "isEnabled"
    .parameter "onClick"

    .prologue
    .line 169
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 170
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 171
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 172
    new-instance v1, Lcom/android/settings_ex/DreamSettings$4;

    invoke-direct {v1, p0, p5}, Lcom/android/settings_ex/DreamSettings$4;-><init>(Lcom/android/settings_ex/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 179
    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b051d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b051c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b051b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 197
    .local v1, items:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnDock()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnSleep()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    .local v0, initialSelection:I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0520

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/DreamSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DreamSettings$5;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 197
    .end local v0           #initialSelection:I
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnDock()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getSummaryResource(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 240
    new-instance v3, Lcom/android/settings_ex/DreamBackend;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 241
    .local v3, backend:Lcom/android/settings_ex/DreamBackend;
    invoke-virtual {v3}, Lcom/android/settings_ex/DreamBackend;->isEnabled()Z

    move-result v4

    .line 242
    .local v4, isEnabled:Z
    invoke-virtual {v3}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    .line 243
    .local v2, activatedOnSleep:Z
    invoke-virtual {v3}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnDock()Z

    move-result v0

    .line 244
    .local v0, activatedOnDock:Z
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 245
    .local v1, activatedOnEither:Z
    :goto_0
    if-nez v4, :cond_2

    const v5, 0x7f0b051e

    :cond_0
    :goto_1
    return v5

    .end local v1           #activatedOnEither:Z
    :cond_1
    move v1, v5

    .line 244
    goto :goto_0

    .line 245
    .restart local v1       #activatedOnEither:Z
    :cond_2
    if-eqz v1, :cond_3

    const v5, 0x7f0b051a

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    const v5, 0x7f0b051c

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_0

    const v5, 0x7f0b051d

    goto :goto_1
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"

    .prologue
    .line 253
    new-instance v0, Lcom/android/settings_ex/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 254
    .local v0, backend:Lcom/android/settings_ex/DreamBackend;
    invoke-virtual {v0}, Lcom/android/settings_ex/DreamBackend;->isEnabled()Z

    move-result v1

    .line 255
    .local v1, isEnabled:Z
    if-nez v1, :cond_0

    .line 256
    const v2, 0x7f0b051e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ex/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "msg"
    .parameter "args"

    .prologue
    .line 283
    return-void
.end method

.method private refreshFromBackend()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 263
    const-string v6, "refreshFromBackend()"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings_ex/DreamSettings;->mRefreshing:Z

    .line 265
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings_ex/DreamBackend;->isEnabled()Z

    move-result v2

    .line 266
    .local v2, dreamsEnabled:Z
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    if-eq v6, v2, :cond_0

    .line 267
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 269
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->clear()V

    .line 270
    if-eqz v2, :cond_1

    .line 271
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings_ex/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    .line 272
    .local v1, dreamInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/DreamBackend$DreamInfo;>;"
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 274
    .end local v1           #dreamInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/DreamBackend$DreamInfo;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v6, :cond_2

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .local v0, arr$:[Landroid/view/MenuItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 276
    .local v5, menuItem:Landroid/view/MenuItem;
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    .end local v0           #arr$:[Landroid/view/MenuItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #menuItem:Landroid/view/MenuItem;
    :cond_2
    iput-boolean v8, p0, Lcom/android/settings_ex/DreamSettings;->mRefreshing:Z

    .line 278
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 122
    const-string v2, "onActivityCreated(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 127
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    .local v0, emptyView:Landroid/widget/TextView;
    const v2, 0x7f0b051f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 129
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 131
    new-instance v2, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;-><init>(Lcom/android/settings_ex/DreamSettings;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    .line 132
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 78
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/16 v5, 0x10

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 85
    const-string v2, "onCreate(%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Lcom/android/settings_ex/DreamBackend;

    invoke-direct {v2, v0}, Lcom/android/settings_ex/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    .line 90
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mSwitch:Landroid/widget/Switch;

    .line 91
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/settings_ex/DreamSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DreamSettings$1;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 103
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 104
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 106
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DreamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 111
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 112
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x1

    .line 184
    const-string v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    if-ne p1, v4, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 137
    const-string v0, "onCreateOptionsMenu()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settings_ex/DreamBackend;->isEnabled()Z

    move-result v4

    .line 142
    .local v4, isEnabled:Z
    const v2, 0x7f0b0521

    const/4 v3, 0x2

    new-instance v5, Lcom/android/settings_ex/DreamSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/DreamSettings$2;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    .line 151
    .local v6, start:Landroid/view/MenuItem;
    const v2, 0x7f0b0520

    const/4 v3, 0x1

    new-instance v5, Lcom/android/settings_ex/DreamSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/DreamSettings$3;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v7

    .line 162
    .local v7, whenToDream:Landroid/view/MenuItem;
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MenuItem;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    iput-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .line 165
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 117
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 118
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings;->mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 225
    const-string v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 227
    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings;->refreshFromBackend()V

    .line 230
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    return-void
.end method
