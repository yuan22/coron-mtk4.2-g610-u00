.class public Lcom/android/settings_ex/ext/DefaultWifiSettingsExt;
.super Ljava/lang/Object;
.source "DefaultWifiSettingsExt.java"

# interfaces
.implements Lcom/android/settings_ex/ext/IWifiSettingsExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiSettingsExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HasCmccAutoSepc()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public IsSingleCmccCard(Landroid/content/Context;)Z
    .locals 1
    .parameter "ctx"

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public adjustPriority()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public disconnect(I)V
    .locals 0
    .parameter "networkId"

    .prologue
    .line 68
    return-void
.end method

.method public emptyCategory(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 47
    return-void
.end method

.method public emptyScreen(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 50
    return-void
.end method

.method public getAccessPointsCount(Landroid/preference/PreferenceScreen;)I
    .locals 1
    .parameter "screen"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    return v0
.end method

.method public getEapMethodbySIM(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "ctx"
    .parameter "simSlot"

    .prologue
    .line 103
    const-string v0, "PEAP"

    return-object v0
.end method

.method public getInsertedCmccSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, simInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const-string v1, "DefaultWifiSettingsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimInfoList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-object v0
.end method

.method public hasCmccCard(Landroid/content/Context;)Z
    .locals 1
    .parameter "ctx"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isCatogoryExist()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public isCmccAuto(Ljava/lang/String;I)Z
    .locals 1
    .parameter "ssid"
    .parameter "security"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isTustAP(Ljava/lang/String;I)Z
    .locals 1
    .parameter "ssid"
    .parameter "security"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public recordPriority(I)V
    .locals 0
    .parameter "selectPriority"

    .prologue
    .line 62
    return-void
.end method

.method public refreshCategory(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 55
    return-void
.end method

.method public registerPriorityObserver(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 0
    .parameter "contentResolver"
    .parameter "context"

    .prologue
    .line 27
    return-void
.end method

.method public setCategory(Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;)V
    .locals 0
    .parameter "trustPref"
    .parameter "configedPref"
    .parameter "newPref"

    .prologue
    .line 44
    return-void
.end method

.method public setLastConnectedConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 31
    return-void
.end method

.method public setLastPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 33
    return-void
.end method

.method public setNewPriority(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 64
    return-void
.end method

.method public shouldAddDisconnectMenu()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAddForgetMenu(Ljava/lang/String;I)Z
    .locals 2
    .parameter "ssid"
    .parameter "security"

    .prologue
    .line 23
    const-string v0, "DefaultWifiSettingsExt"

    const-string v1, "WifiSettingsExt, shouldAddMenuForget(),return true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public shouldAddModifyMenu(Ljava/lang/String;I)Z
    .locals 1
    .parameter "ssid"
    .parameter "security"

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterPriorityObserver(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "contentResolver"

    .prologue
    .line 29
    return-void
.end method

.method public updatePriority()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public updatePriorityAfterConnect(I)V
    .locals 0
    .parameter "networkId"

    .prologue
    .line 70
    return-void
.end method

.method public updatePriorityAfterSubmit(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 66
    return-void
.end method
