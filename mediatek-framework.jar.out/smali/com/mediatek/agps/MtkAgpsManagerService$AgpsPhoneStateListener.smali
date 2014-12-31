.class Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AgpsPhoneStateListener"
.end annotation


# static fields
.field public static final NETWORK_TYPE_2G:I = 0x0

.field public static final NETWORK_TYPE_3G:I = 0x1

.field public static final NETWORK_TYPE_CDMA:I = 0x2

.field public static final NETWORK_TYPE_NONE:I = -0x1

.field public static final NETWORK_TYPE_SIP:I = 0x3


# instance fields
.field private mIsDataConnected:Z

.field private mIsGemini:Z

.field private mIsNetworkRoaming:Z

.field private mIsSimReady:Z

.field private mNetworkType:I

.field private mSimId:I

.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 782
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;ZI)V

    .line 783
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;ZI)V
    .locals 2
    .parameter
    .parameter "isGemini"
    .parameter "whichSim"

    .prologue
    const/4 v1, 0x0

    .line 784
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 768
    iput v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsGemini:Z

    .line 776
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    .line 777
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    .line 778
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    .line 779
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    .line 785
    iput-boolean p2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsGemini:Z

    .line 786
    if-ltz p3, :cond_0

    const/4 v0, 0x4

    if-lt p3, v0, :cond_1

    .line 787
    :cond_0
    iput v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_1
    iput p3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    goto :goto_0
.end method

.method private changeSlpProfileBasedOnMccMnc(Ljava/lang/String;)V
    .locals 5
    .parameter "mccMnc"

    .prologue
    .line 1014
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2600(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAllProfile()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 1015
    .local v1, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v2, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->mccMnc:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1016
    iget-object v2, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->mccMnc:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1017
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeSlpProfileBasedOnMccMnc mccMnc is matched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1018
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-virtual {v2, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    goto :goto_0

    .line 1022
    .end local v1           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_1
    return-void
.end method

.method private getLocalIpAddress()Ljava/lang/String;
    .locals 9

    .prologue
    .line 885
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 886
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 888
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 889
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 890
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    instance-of v6, v3, Ljava/net/Inet4Address;

    if-eqz v6, :cond_1

    .line 891
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 892
    .local v5, ip:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IP="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 902
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    .end local v5           #ip:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, e:Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 902
    .end local v0           #e:Ljava/net/SocketException;
    :cond_2
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 899
    :catch_1
    move-exception v0

    .line 900
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private getNetworkTypeGemini()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 815
    const/4 v2, 0x0

    .line 816
    .local v2, ret:I
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 817
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 819
    .local v0, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v3

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 822
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkType(I)I

    move-result v1

    .line 823
    .local v1, networkType:I
    if-eq v1, v5, :cond_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x9

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 827
    :cond_0
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " network type is 3G, networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 828
    const/4 v2, 0x1

    .line 845
    .end local v0           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v1           #networkType:I
    :goto_0
    return v2

    .line 830
    .restart local v0       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v1       #networkType:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " network type is 2G, networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 833
    .end local v1           #networkType:I
    :cond_2
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "ERR: gsm_cell is invalid"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 836
    .end local v0           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 837
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " network type is CDMA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 838
    const/4 v2, 0x2

    goto :goto_0

    .line 839
    :cond_4
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 840
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " network type is SIP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 841
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 843
    :cond_5
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: unknown phone type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v5

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (0:NONE 1:GSM 2:CDMA 3:SIP)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getNetworkTypeSingle()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x3

    .line 850
    const/4 v2, 0x0

    .line 851
    .local v2, ret:I
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 852
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 854
    .local v0, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 857
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 858
    .local v1, networkType:I
    if-eq v1, v5, :cond_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x9

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 862
    :cond_0
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network type is 3G, networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 863
    const/4 v2, 0x1

    .line 880
    .end local v0           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v1           #networkType:I
    :goto_0
    return v2

    .line 865
    .restart local v0       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v1       #networkType:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network type is 2G, networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 868
    .end local v1           #networkType:I
    :cond_2
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "ERR: gsm_cell is invalid"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 871
    .end local v0           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 872
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "network type is CDMA"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 873
    const/4 v2, 0x2

    goto :goto_0

    .line 874
    :cond_4
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 875
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "network type is SIP"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 876
    const/4 v2, 0x3

    goto :goto_0

    .line 878
    :cond_5
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: unknown phone type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (0:NONE 1:GSM 2:CDMA 3:SIP)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSimNum()I
    .locals 1

    .prologue
    .line 794
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v0, v0, 0x0

    return v0
.end method

.method private updateCallState2Agpsd(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 944
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0xb

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v0, v1, v2, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 945
    return-void
.end method

.method private updateConnectionState2Agpsd(Z)V
    .locals 4
    .parameter "status"

    .prologue
    .line 921
    iput-boolean p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    .line 922
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0xe

    iget v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 923
    return-void

    .line 922
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateIPAdress()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 926
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v7

    .line 927
    .local v7, ip:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 928
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1402(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 929
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1400(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1400(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v6

    move v4, v3

    move v5, v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;IIIIILjava/lang/String;)V

    .line 932
    :cond_0
    return-void
.end method

.method private updateNetworkType2Agpsd()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 911
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 912
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getNetworkTypeSingle()I

    move-result v0

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    .line 913
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v0, v3, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 918
    :goto_0
    return-void

    .line 915
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getNetworkTypeGemini()I

    move-result v0

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    .line 916
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v0, v3, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    goto :goto_0
.end method

.method private updateRoamingStatus2Agpsd()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 935
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 936
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    .line 940
    :goto_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0xd

    iget v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget-boolean v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    if-eqz v4, :cond_1

    :goto_1
    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 941
    return-void

    .line 938
    :cond_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    goto :goto_0

    .line 940
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateSimStatus2Agpsd(Z)V
    .locals 4
    .parameter "status"

    .prologue
    .line 906
    iput-boolean p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    .line 907
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0xa

    iget v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 908
    return-void

    .line 907
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNetworkType()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    return v0
.end method

.method public isDataConnected()Z
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    return v0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    return v0
.end method

.method public isSimReady()Z
    .locals 1

    .prologue
    .line 805
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    return v0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (0:idle 1:ringing 2:offhook) incomingNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1066
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateCallState2Agpsd(I)V

    .line 1067
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCellLocationChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateCellInfo2Agpsd()I

    .line 1029
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    if-eqz v0, :cond_0

    .line 1030
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateNetworkType2Agpsd()V

    .line 1033
    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 1038
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDataConnectionStateChanged connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1040
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateConnectionState2Agpsd(Z)V

    .line 1041
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateNetworkType2Agpsd()V

    .line 1042
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateIPAdress()V

    .line 1043
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateCellInfo2Agpsd()I

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    if-nez p1, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDataConnectionStateChanged disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1046
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateConnectionState2Agpsd(Z)V

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "serviceState"

    .prologue
    const/4 v3, 0x1

    .line 1052
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceStateChanged phone is in service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1054
    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateSimStatus2Agpsd(Z)V

    .line 1055
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateRoamingStatus2Agpsd()V

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceStateChanged phone is out of service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1058
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateSimStatus2Agpsd(Z)V

    goto :goto_0
.end method

.method public updateCellInfo2Agpsd()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, -0x1

    .line 956
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 957
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    .line 961
    .local v9, phoneType:I
    :goto_0
    if-eq v9, v10, :cond_1

    .line 962
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: phone type is not GSM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move v0, v1

    .line 1008
    .end local v9           #phoneType:I
    :goto_1
    return v0

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v9

    .restart local v9       #phoneType:I
    goto :goto_0

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 967
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v4, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2402(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/telephony/gsm/GsmCellLocation;)Landroid/telephony/gsm/GsmCellLocation;

    .line 972
    :goto_2
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2400(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v0

    if-nez v0, :cond_3

    .line 973
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "WARNING: mCellloc is null from getCellLocation"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move v0, v1

    .line 974
    goto :goto_1

    .line 969
    :cond_2
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v4, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2402(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/telephony/gsm/GsmCellLocation;)Landroid/telephony/gsm/GsmCellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 976
    .end local v9           #phoneType:I
    :catch_0
    move-exception v8

    .line 977
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    .line 978
    goto :goto_1

    .line 983
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #phoneType:I
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v0

    if-ne v0, v10, :cond_4

    .line 984
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 985
    .local v6, imsi:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    .line 990
    .local v7, mccMnc:Ljava/lang/String;
    :goto_3
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2400(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 991
    .local v2, lac:I
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2400(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 997
    .local v3, cid:I
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 998
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " IMSI="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " MccMnc="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Lac="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Cid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v1, 0x6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2500(Lcom/mediatek/agps/MtkAgpsManagerService;IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-direct {p0, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->changeSlpProfileBasedOnMccMnc(Ljava/lang/String;)V

    .line 1005
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 987
    .end local v2           #lac:I
    .end local v3           #cid:I
    .end local v6           #imsi:Ljava/lang/String;
    .end local v7           #mccMnc:Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 988
    .restart local v6       #imsi:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperator(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .restart local v7       #mccMnc:Ljava/lang/String;
    goto/16 :goto_3

    .line 992
    .end local v6           #imsi:Ljava/lang/String;
    .end local v7           #mccMnc:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 993
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    .line 994
    goto/16 :goto_1

    .line 1007
    .end local v8           #e:Ljava/lang/NullPointerException;
    .restart local v2       #lac:I
    .restart local v3       #cid:I
    .restart local v6       #imsi:Ljava/lang/String;
    .restart local v7       #mccMnc:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IMSI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mccMnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move v0, v1

    .line 1008
    goto/16 :goto_1
.end method
