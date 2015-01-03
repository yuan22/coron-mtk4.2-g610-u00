.class Lcom/android/settings_ex/deviceinfo/Memory$1;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, action:Ljava/lang/String;
    const-string v18, "MemorySettings"

    const-string v19, "Receive dynamic sd swap broadcast"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/Memory;->access$000(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/os/storage/StorageManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v14

    .line 163
    .local v14, newVolumes:[Landroid/os/storage/StorageVolume;
    move-object v4, v14

    .local v4, arr$:[Landroid/os/storage/StorageVolume;
    array-length v12, v4

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v4           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v9           #i$:I
    .end local v12           #len$:I
    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_4

    aget-object v17, v4, v10

    .line 165
    .local v17, volume:Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/Memory;->access$100(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10           #i$:I
    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 166
    .local v6, category:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    if-eqz v17, :cond_0

    invoke-virtual {v6}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 167
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v6}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 169
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->setStorageVolume(Landroid/os/storage/StorageVolume;)V

    .line 170
    invoke-virtual {v6}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateStorageVolumePrefCategory()V

    goto :goto_1

    .line 176
    .end local v6           #category:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/Memory;->access$200(Lcom/android/settings_ex/deviceinfo/Memory;)[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    move-result-object v5

    .local v5, arr$:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;
    array-length v13, v5

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v13, :cond_3

    aget-object v15, v5, v9

    .line 177
    .local v15, pref:Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v15}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 163
    .end local v15           #pref:Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;
    :cond_3
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto :goto_0

    .line 183
    .end local v5           #arr$:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;
    .end local v13           #len$:I
    .end local v17           #volume:Landroid/os/storage/StorageVolume;
    :cond_4
    const-string v18, "SD_EXIST"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 184
    .local v11, isExternalSD:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/Memory;->access$300(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/preference/ListPreference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 187
    if-eqz v11, :cond_6

    .line 189
    const-string v16, ""

    .line 190
    .local v16, sdDescription:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_5

    .line 191
    aget-object v18, v14, v8

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 194
    aget-object v18, v14, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 199
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/Memory;->access$300(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/preference/ListPreference;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 200
    .local v7, entries:[Ljava/lang/CharSequence;
    const/16 v18, 0x1

    aput-object v16, v7, v18

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/Memory;->access$300(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/preference/ListPreference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 203
    .end local v7           #entries:[Ljava/lang/CharSequence;
    .end local v8           #i:I
    .end local v16           #sdDescription:Ljava/lang/String;
    :cond_6
    const-string v18, "switch_success"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, "switch_exception"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 206
    :cond_7
    const-string v18, "MemorySettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "manul swap end, action: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mManulSwaping:Z
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/Memory;->access$400(Lcom/android/settings_ex/deviceinfo/Memory;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/Memory;->access$500(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/app/ProgressDialog;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 209
    const-string v18, "MemorySettings"

    const-string v19, "manuleSwitch mProgressDialog dismiss"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/Memory;->access$500(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/app/ProgressDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->dismiss()V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/settings_ex/deviceinfo/Memory;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v19}, Lcom/android/settings_ex/deviceinfo/Memory;->access$502(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 213
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/settings_ex/deviceinfo/Memory;->mManulSwaping:Z
    invoke-static/range {v18 .. v19}, Lcom/android/settings_ex/deviceinfo/Memory;->access$402(Lcom/android/settings_ex/deviceinfo/Memory;Z)Z

    .line 215
    :cond_9
    const-string v18, "switch_exception"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/Memory;->access$700(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/deviceinfo/Memory;->access$600(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/lang/Runnable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/Memory;->access$700(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/Memory$1;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/deviceinfo/Memory;->access$600(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/lang/Runnable;

    move-result-object v19

    const-wide/16 v20, 0xc8

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    :cond_a
    return-void

    .line 190
    .restart local v8       #i:I
    .restart local v16       #sdDescription:Ljava/lang/String;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3
.end method
