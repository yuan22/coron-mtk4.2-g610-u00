.class Lcom/android/settings_ex/deviceinfo/Memory$12;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/Memory;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Memory;

.field final synthetic val$defPreference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 947
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$12;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/Memory$12;->val$defPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory$12;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$12;->val$defPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings_ex/deviceinfo/Memory;->manuleSwitch(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$1800(Lcom/android/settings_ex/deviceinfo/Memory;Ljava/lang/String;)V

    .line 954
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$12;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory$12;->val$defPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    #setter for: Lcom/android/settings_ex/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;
    invoke-static {v1, v0}, Lcom/android/settings_ex/deviceinfo/Memory;->access$1702(Lcom/android/settings_ex/deviceinfo/Memory;Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;)Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    .line 955
    return-void
.end method
