.class public Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;
.super Ljava/lang/Object;
.source "WifiCmccAutoSettings.java"


# static fields
.field static final BOOT_TIME:Ljava/lang/String; = "BootTime"

.field static final EAP_METHOD:Ljava/lang/String; = "EapMethod"

.field static final EAP_NONE:Ljava/lang/String; = "NONE"

.field static final EAP_PEAP:Ljava/lang/String; = "PEAP"

.field static final IMSI0:Ljava/lang/String; = "Imsi0"

.field static final IMSI1:Ljava/lang/String; = "Imsi1"

.field static final SIM_CNT:Ljava/lang/String; = "SimCnt"

.field static final SIM_SLOT:Ljava/lang/String; = "SimSlot"

.field private static final TAG:Ljava/lang/String; = "WifiCmccAutoSettings"


# instance fields
.field private mContext:Landroid/content/Context;

.field mImsi:[Ljava/lang/String;

.field private mSettings:Landroid/content/SharedPreferences;

.field private mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

.field mSimCnt:I

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSimCnt:I

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mImsi:[Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->getWifiSettingsPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/IWifiSettingsExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

    .line 58
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSettings:Landroid/content/SharedPreferences;

    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->getCmccAutoSettings()V

    .line 62
    return-void
.end method

.method private getCmccAutoSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SimCnt"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSimCnt:I

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mImsi:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v2, "Imsi0"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mImsi:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v3, "Imsi1"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 168
    return-void
.end method


# virtual methods
.method public GetSystemBootTime()J
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "BootTime"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public SetSystemBootTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "BootTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 174
    return-void
.end method

.method public getSelectSimSlot()I
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SimSlot"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSelectedEapMethod()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "EapMethod"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEapMethodPEAP()Z
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->getSelectedEapMethod()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, eapMethod:Ljava/lang/String;
    const-string v1, "PEAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isEapMethodSIM()Z
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->getSelectedEapMethod()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, eapMethod:Ljava/lang/String;
    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInsertedSIMChanged()Z
    .locals 10

    .prologue
    .line 68
    const/4 v3, 0x0

    .line 69
    .local v3, isChanged:Z
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSettingsExt:Lcom/android/settings_ex/ext/IWifiSettingsExt;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mContext:Landroid/content/Context;

    invoke-interface {v6, v7}, Lcom/android/settings_ex/ext/IWifiSettingsExt;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 70
    .local v5, simInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    iget v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSimCnt:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 71
    const/4 v3, 0x1

    .line 75
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    .line 76
    .local v4, simInfo:Landroid/provider/Telephony$SIMInfo;
    const-string v2, ""

    .line 79
    .local v2, imsi:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget v7, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v6, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    const-string v6, "WifiCmccAutoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMSI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mImsi:[Ljava/lang/String;

    iget v9, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mImsi:[Ljava/lang/String;

    iget v7, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 88
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 89
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mImsi:[Ljava/lang/String;

    iget v7, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    aput-object v2, v6, v7

    .line 93
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 91
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mImsi:[Ljava/lang/String;

    iget v7, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    const-string v8, ""

    aput-object v8, v6, v7

    goto :goto_1

    .line 99
    .end local v2           #imsi:Ljava/lang/String;
    .end local v4           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "SimCnt"

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 101
    const-string v6, "Imsi0"

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mImsi:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    const-string v6, "Imsi1"

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mImsi:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    const-string v6, "WifiCmccAutoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isInsertedSIMChanged :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v3
.end method

.method public setSelectSimSlot(I)V
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "SimSlot"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method

.method public setSelectedEapMethod(Ljava/lang/String;)V
    .locals 2
    .parameter "eapMethod"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiCmccAutoSettings;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "EapMethod"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method
