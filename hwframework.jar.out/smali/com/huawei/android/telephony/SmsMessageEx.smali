.class public Lcom/huawei/android/telephony/SmsMessageEx;
.super Ljava/lang/Object;
.source "SmsMessageEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "scTimeStamp"
    .parameter "origAddress"
    .parameter "message"
    .parameter "UDH"

    .prologue
    .line 82
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMessageRefrenceNumber()I
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSubId(Landroid/telephony/SmsMessage;)I
    .locals 2
    .parameter "obj"

    .prologue
    .line 37
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "timeStamps"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "UDH"

    .prologue
    .line 66
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUserDataHeaderForGsm(III)[B
    .locals 2
    .parameter "seqNum"
    .parameter "maxNum"
    .parameter "MessageReferenceNum"

    .prologue
    .line 52
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setSubId(Landroid/telephony/SmsMessage;I)V
    .locals 2
    .parameter "obj"
    .parameter "subId"

    .prologue
    .line 33
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
