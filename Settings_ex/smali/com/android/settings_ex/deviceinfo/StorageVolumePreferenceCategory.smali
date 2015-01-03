.class public Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# static fields
.field public static final KEY_CACHE:Ljava/lang/String; = "cache"

.field private static final MSG_UI_UPDATE_APPROXIMATE:I = 0x1

.field private static final MSG_UI_UPDATE_DETAILS:I = 0x2

.field private static final ORDER_STORAGE_LOW:I = -0x1

.field private static final ORDER_USAGE_BAR:I = -0x2

.field private static final TAG:Ljava/lang/String; = "StorageVolumePreferenceCategory"

.field private static final USB_STORAGE_PATH:Ljava/lang/String; = "/mnt/usbotg"


# instance fields
.field private mFormatPreference:Landroid/preference/Preference;

.field private mIsInternalSD:Z

.field private mIsPrimary:Z

.field private mIsUsbStorage:Z

.field private mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/StorageVolume;

.field private mVolumeDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 3
    .parameter "context"
    .parameter "volume"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 106
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 665
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 141
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 142
    invoke-static {p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 145
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 146
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 148
    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    if-eqz p2, :cond_0

    .line 152
    const-string v0, "/mnt/usbotg"

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    .line 153
    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    .line 154
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    .line 155
    const-string v0, "StorageVolumePreferenceCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEmulated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRemovable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    return-void

    .line 148
    :cond_1
    const v0, 0x7f0b0681

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2
    .parameter "context"

    .prologue
    .line 127
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .parameter "context"
    .parameter "volume"

    .prologue
    .line 135
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .locals 2
    .parameter "titleRes"
    .parameter "colorRes"

    .prologue
    .line 163
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 662
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .parameter "excluding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 750
    .local v1, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 751
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 752
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 753
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 756
    :cond_1
    return-object v1
.end method

.method private getVolumeString(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "stringId"
    .parameter "description"

    .prologue
    .line 761
    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    if-nez v3, :cond_2

    .line 762
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 788
    :cond_1
    :goto_0
    return-object v1

    .line 765
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0298

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, sdCardString:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 770
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 772
    const-string v3, "sd"

    const-string v4, "SD"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 773
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 776
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 777
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SD"

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 779
    const-string v3, "StorageVolumePreferenceCategory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not replace SD card, Replace SD, str is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 783
    .local v2, tr:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 786
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->invalidate()V

    .line 624
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->measure()V

    .line 625
    return-void
.end method

.method private resetPreferences()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_4

    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 369
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_6

    .line 370
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_7

    .line 373
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_8

    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_9

    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 384
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 386
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 389
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 390
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 391
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 392
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 393
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 394
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 397
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_a

    .line 398
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 401
    :cond_a
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 402
    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .parameter
    .parameter "keys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 527
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 528
    .local v4, total:J
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 529
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    return-wide v4
.end method

.method private updateLowStoragePreference()V
    .locals 3

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isSomeStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    if-eqz v1, :cond_1

    .line 328
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 330
    .local v0, pm:Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 332
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 333
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    const v2, 0x7f0b058d

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 334
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    const v2, 0x7f0b058e

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 335
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 343
    .end local v0           #pm:Landroid/content/pm/IPackageManager;
    :cond_1
    :goto_0
    return-void

    .line 336
    .restart local v0       #pm:Landroid/content/pm/IPackageManager;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 338
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V
    .locals 5
    .parameter "pref"
    .parameter "size"

    .prologue
    .line 613
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 614
    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 615
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    .line 616
    .local v0, order:I
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 620
    .end local v0           #order:I
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 9

    .prologue
    const v8, 0x7f0b0580

    const v7, 0x7f0b057f

    const v6, 0x7f0b0014

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 407
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->resetPreferences()V

    .line 416
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, state:Ljava/lang/String;
    const-string v1, "StorageVolumePreferenceCategory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferencesFromState, state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 420
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const v2, 0x7f0b0572

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 421
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 431
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 434
    :cond_3
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 436
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 437
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    if-eqz v1, :cond_a

    .line 438
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 489
    :cond_5
    :goto_2
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v1, :cond_10

    const-string v1, "mtp"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ptp"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 491
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 492
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 494
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0585

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    :cond_8
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 500
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0585

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 425
    :cond_9
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const v2, 0x7f0b0571

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    .line 443
    :cond_a
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v2, 0x7f0b057c

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v2, 0x7f0b057d

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 449
    :cond_b
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "nofs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "unmountable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 452
    :cond_c
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 453
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    if-eqz v1, :cond_d

    .line 454
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 481
    :goto_3
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 482
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 483
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 484
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_5

    .line 485
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 460
    :cond_d
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v7, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v8, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 467
    :cond_e
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 468
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    if-eqz v1, :cond_f

    .line 469
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 475
    :cond_f
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v7, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v2, 0x7f0b057e

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 502
    :cond_10
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 504
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v2, 0x7f0b0582

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 20

    .prologue
    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 171
    .local v5, context:Landroid/content/Context;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 176
    .local v8, currentUser:Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v12

    .line 177
    .local v12, otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_2

    const/4 v14, 0x1

    .line 179
    .local v14, showUsers:Z
    :goto_0
    new-instance v16, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v16, v0

    const/16 v17, -0x2

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setOrder(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 183
    const v16, 0x7f0b0573

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 184
    const v16, 0x7f0b0571

    const v17, 0x7f0a0007

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 188
    const v16, 0x7f0b0575

    const v17, 0x7f0a0008

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 189
    const v16, 0x7f0b0578

    const v17, 0x7f0a000a

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 190
    const v16, 0x7f0b0579

    const v17, 0x7f0a000b

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 191
    const v16, 0x7f0b0577

    const v17, 0x7f0a0009

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 192
    const v16, 0x7f0b057b

    const v17, 0x7f0a000c

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 193
    const v16, 0x7f0b057a

    const v17, 0x7f0a000d

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    const-string v17, "cache"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v16

    if-eqz v16, :cond_3

    :cond_0
    const/4 v13, 0x1

    .line 198
    .local v13, showDetails:Z
    :goto_1
    if-eqz v13, :cond_5

    .line 199
    if-eqz v14, :cond_1

    .line 200
    new-instance v16, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 210
    if-eqz v14, :cond_5

    .line 211
    new-instance v16, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v17, 0x7f0b0597

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 213
    const/4 v6, 0x0

    .line 214
    .local v6, count:I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 215
    .local v11, info:Landroid/content/pm/UserInfo;
    add-int/lit8 v7, v6, 0x1

    .end local v6           #count:I
    .local v7, count:I
    rem-int/lit8 v16, v6, 0x2

    if-nez v16, :cond_4

    const v4, 0x7f0a000e

    .line 217
    .local v4, colorRes:I
    :goto_3
    new-instance v15, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v16

    iget-object v0, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v15, v0, v1, v4, v2}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 219
    .local v15, userPref:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v6, v7

    .line 221
    .end local v7           #count:I
    .restart local v6       #count:I
    goto :goto_2

    .line 172
    .end local v4           #colorRes:I
    .end local v6           #count:I
    .end local v8           #currentUser:Landroid/content/pm/UserInfo;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #info:Landroid/content/pm/UserInfo;
    .end local v12           #otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v13           #showDetails:Z
    .end local v14           #showUsers:Z
    .end local v15           #userPref:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v9

    .line 173
    .local v9, e:Landroid/os/RemoteException;
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "Failed to get current user"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 177
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v8       #currentUser:Landroid/content/pm/UserInfo;
    .restart local v12       #otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 197
    .restart local v14       #showUsers:Z
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 215
    .restart local v7       #count:I
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #info:Landroid/content/pm/UserInfo;
    .restart local v13       #showDetails:Z
    :cond_4
    const v4, 0x7f0a000f

    goto :goto_3

    .line 225
    .end local v7           #count:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #info:Landroid/content/pm/UserInfo;
    :cond_5
    new-instance v16, Landroid/preference/Preference;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f0b057c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f0b057d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v16

    if-nez v16, :cond_7

    const/4 v3, 0x1

    .line 235
    .local v3, allowFormat:Z
    :goto_4
    if-eqz v3, :cond_6

    .line 236
    new-instance v16, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f0b0581

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0b0016

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f0b0582

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0b0016

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 250
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateLowStoragePreference()V

    .line 254
    return-void

    .line 234
    .end local v3           #allowFormat:Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    .line 245
    .restart local v3       #allowFormat:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f0b0581

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f0b0582

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 7
    .parameter "pref"

    .prologue
    .line 683
    const/4 v2, 0x0

    .line 689
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v4, :cond_1

    .line 691
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/settings_ex/MediaFormat;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 694
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 695
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "volume"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 696
    const-string v4, "IsUsbStorage"

    iget-boolean v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 697
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 725
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v2

    .line 698
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_2

    .line 699
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 700
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/settings_ex/Settings$ManageApplicationsActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 703
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_3

    .line 704
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.app.DownloadManager.extra_sortBySize"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 706
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_4

    .line 707
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "audio/mp3"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 709
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_5

    .line 716
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.APP_GALLERY"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 719
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_0

    .line 720
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 721
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v4, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-direct {v2, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 722
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "storage_volume"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 655
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 2

    .prologue
    .line 649
    const-string v0, "StorageVolumePreferenceCategory"

    const-string v1, "onMediaScannerFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 651
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 659
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 628
    const-string v0, "StorageVolumePreferenceCategory"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 630
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 631
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 632
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 2

    .prologue
    .line 635
    const-string v0, "StorageVolumePreferenceCategory"

    const-string v1, "onStorageStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 637
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 638
    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 2
    .parameter "isUsbConnected"
    .parameter "usbFunction"

    .prologue
    .line 641
    const-string v0, "StorageVolumePreferenceCategory"

    const-string v1, "onUsbStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    .line 643
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    .line 644
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 645
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 646
    return-void
.end method

.method public setStorageVolume(Landroid/os/storage/StorageVolume;)V
    .locals 0
    .parameter "volume"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 262
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 6
    .parameter "totalSize"
    .parameter "availSize"

    .prologue
    .line 510
    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : total size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", avail size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 515
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 517
    sub-long v0, p1, p3

    .line 519
    .local v0, usedSize:J
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->clear()V

    .line 520
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    const/4 v3, 0x0

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    const v5, -0x777778

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 521
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->commit()V

    .line 523
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 524
    return-void
.end method

.method public updateDetails(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 17
    .parameter "details"

    .prologue
    .line 535
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v13, :cond_7

    .line 536
    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateDetails, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", isPrimary is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_0
    const/4 v9, 0x1

    .line 543
    .local v9, showDetails:Z
    :goto_1
    if-nez v9, :cond_9

    .line 544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_1

    .line 545
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 547
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_2

    .line 548
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 550
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_3

    .line 551
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 553
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_4

    .line 554
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 556
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_5

    .line 557
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 559
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_6

    .line 560
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 610
    :cond_6
    :goto_2
    return-void

    .line 540
    .end local v9           #showDetails:Z
    :cond_7
    const-string v13, "StorageVolumePreferenceCategory"

    const-string v14, "updateDetails, mVolume is null"

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    .line 566
    .restart local v9       #showDetails:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v13}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->clear()V

    .line 571
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 573
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v13, :cond_a

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v13

    if-nez v13, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_b
    const/4 v6, 0x1

    .line 575
    .local v6, measureMedia:Z
    :goto_3
    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "measureMedia is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    if-eqz v6, :cond_d

    .line 577
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v1

    .line 580
    .local v1, dcimSize:J
    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mDcim size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 583
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    sget-object v16, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x4

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v7

    .line 588
    .local v7, musicSize:J
    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "music size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7, v8}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 591
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v3

    .line 593
    .local v3, downloadsSize:J
    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "downloads size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 601
    .end local v1           #dcimSize:J
    .end local v3           #downloadsSize:J
    .end local v7           #musicSize:J
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 602
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 604
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 605
    .local v10, userPref:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v14, v10, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-virtual {v13, v14}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    .line 606
    .local v11, userSize:J
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_5

    .line 573
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #measureMedia:Z
    .end local v10           #userPref:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .end local v11           #userSize:J
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 596
    .restart local v6       #measureMedia:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 597
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 598
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_4

    .line 609
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v13}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_2
.end method

.method public updateStorageVolumePrefCategory()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 265
    const-string v2, "StorageVolumePreferenceCategory"

    const-string v5, "sd swap ---- updateStorageVolumePrefCategory"

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 275
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    .line 277
    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVolumeDescription is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    .line 279
    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsInternalSD is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    iput-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateLowStoragePreference()V

    .line 290
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    .line 291
    .local v1, isRemovable:Z
    :goto_2
    if-eqz v1, :cond_2

    .line 292
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-nez v2, :cond_2

    .line 293
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 294
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v5, 0x7f0b057c

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v5, 0x7f0b057d

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 303
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v3

    .line 304
    .local v0, allowFormat:Z
    :goto_3
    if-eqz v0, :cond_9

    .line 305
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-nez v2, :cond_3

    .line 306
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 308
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v3, 0x7f0b0581

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v3, 0x7f0b0582

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    :cond_4
    :goto_4
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 321
    return-void

    .line 267
    .end local v0           #allowFormat:Z
    .end local v1           #isRemovable:Z
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0681

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 278
    goto/16 :goto_1

    :cond_7
    move v1, v4

    .line 290
    goto :goto_2

    .restart local v1       #isRemovable:Z
    :cond_8
    move v0, v4

    .line 303
    goto :goto_3

    .line 313
    .restart local v0       #allowFormat:Z
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_4

    .line 314
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    iput-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    goto :goto_4
.end method
