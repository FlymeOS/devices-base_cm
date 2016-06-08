.class final Lcom/android/server/am/ActivityStackSupervisor$FlymeInjector;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkFlymePermission(ILjava/lang/String;Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p0, "callingUid"    # I
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 4181
    if-eqz p2, :cond_0

    const-string v0, "android.permission.CALL_PHONE"

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v0, p1, p0, v1}, Lmeizu/security/FlymePermissionManager;->isGranted(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4183
    const/4 v0, 0x1

    .line 4185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static interceptForAccessControl(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 16
    .param p0, "dst"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callingUid"    # I

    .prologue
    .line 4147
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v11

    .local v11, "srcIntentFlag":I
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v12, v11}, Landroid/content/IntentExt;->setAccessSrcFlags(I)V

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v12}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v5

    .line 4148
    .local v5, "flag":I
    and-int/lit8 v12, v5, 0x10

    if-eqz v12, :cond_2

    const/4 v7, 0x1

    .line 4149
    .local v7, "isLockView":Z
    :goto_0
    and-int/lit8 v12, v5, 0x20

    if-eqz v12, :cond_3

    const/4 v6, 0x1

    .local v6, "isFastStarting":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .local v4, "context":Landroid/content/Context;
    if-eqz p2, :cond_6

    if-eqz v7, :cond_0

    if-nez v6, :cond_6

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v12, :cond_1

    const-string v12, "access_control"

    invoke-virtual {v4, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmeizu/security/AccessControlManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 4155
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRealPm:Lcom/android/server/pm/PackageManagerService;

    if-nez v12, :cond_4

    move-object/from16 v1, p2

    .line 4177
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "flag":I
    .end local v6    # "isFastStarting":Z
    .end local v7    # "isLockView":Z
    .end local v11    # "srcIntentFlag":I
    .end local p2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_2
    return-object v1

    .line 4148
    .end local v1    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "flag":I
    .restart local v11    # "srcIntentFlag":I
    .restart local p2    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 4149
    .restart local v7    # "isLockView":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 4158
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v6    # "isFastStarting":Z
    :cond_4
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v9, v12, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 4159
    .local v9, "needAccessControl":Z
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "mz_app_lock_control"

    const/4 v14, 0x0

    const/4 v15, -0x3

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 4160
    .local v3, "appAccessControl":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    if-eqz v9, :cond_6

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRealPm:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageManagerService;->getAccessInfo(I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 4162
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4163
    .local v2, "activityLabel":Ljava/lang/CharSequence;
    if-nez v2, :cond_5

    .line 4164
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_7

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4167
    :cond_5
    :goto_3
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4168
    .local v8, "mAccessPkg":Ljava/lang/String;
    if-eqz v10, :cond_8

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 p2, v0

    .line 4169
    :goto_4
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iput-object v2, v12, Landroid/content/ActivityInfoExt;->mDisplaytitleString:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iput-object v8, v12, Landroid/content/ActivityInfoExt;->mAccessPkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    iput-object v13, v12, Landroid/content/ActivityInfoExt;->mStartComponentName:Landroid/content/ComponentName;

    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .end local v2    # "activityLabel":Ljava/lang/CharSequence;
    .end local v3    # "appAccessControl":I
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "flag":I
    .end local v6    # "isFastStarting":Z
    .end local v7    # "isLockView":Z
    .end local v8    # "mAccessPkg":Ljava/lang/String;
    .end local v9    # "needAccessControl":Z
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "srcIntentFlag":I
    :cond_6
    :goto_5
    move-object/from16 v1, p2

    .line 4177
    .end local p2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_2

    .line 4164
    .end local v1    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "activityLabel":Ljava/lang/CharSequence;
    .restart local v3    # "appAccessControl":I
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "flag":I
    .restart local v6    # "isFastStarting":Z
    .restart local v7    # "isLockView":Z
    .restart local v9    # "needAccessControl":Z
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "srcIntentFlag":I
    .restart local p2    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_7
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_3

    .line 4168
    .restart local v8    # "mAccessPkg":Ljava/lang/String;
    :cond_8
    const/16 p2, 0x0

    goto :goto_4

    .line 4175
    .end local v2    # "activityLabel":Ljava/lang/CharSequence;
    .end local v3    # "appAccessControl":I
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "flag":I
    .end local v6    # "isFastStarting":Z
    .end local v7    # "isLockView":Z
    .end local v8    # "mAccessPkg":Ljava/lang/String;
    .end local v9    # "needAccessControl":Z
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "srcIntentFlag":I
    :catch_0
    move-exception v12

    goto :goto_5
.end method
