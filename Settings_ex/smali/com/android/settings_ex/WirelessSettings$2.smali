.class Lcom/android/settings_ex/WirelessSettings$2;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/WirelessSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/WirelessSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$2;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 257
    const/4 v0, -0x2

    if-ne v0, p2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings$2;->this$0:Lcom/android/settings_ex/WirelessSettings;

    #getter for: Lcom/android/settings_ex/WirelessSettings;->mPCHPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/WirelessSettings;->access$300(Lcom/android/settings_ex/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 260
    :cond_0
    return-void
.end method
