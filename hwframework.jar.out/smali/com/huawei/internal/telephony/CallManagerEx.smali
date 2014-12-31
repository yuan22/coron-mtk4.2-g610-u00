.class public final Lcom/huawei/internal/telephony/CallManagerEx;
.super Ljava/lang/Object;
.source "CallManagerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    return-object v0
.end method

.method public static final getPhoneInCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter "obj"

    .prologue
    .line 44
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final registerForSuppServiceNotification(Lcom/android/internal/telephony/CallManager;Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "obj"
    .parameter "h"
    .parameter "what"
    .parameter "object"

    .prologue
    .line 56
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setAudioMode(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "obj"
    .parameter "ph"

    .prologue
    .line 70
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final unregisterForSuppServiceNotification(Lcom/android/internal/telephony/CallManager;Landroid/os/Handler;)V
    .locals 2
    .parameter "obj"
    .parameter "h"

    .prologue
    .line 65
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
