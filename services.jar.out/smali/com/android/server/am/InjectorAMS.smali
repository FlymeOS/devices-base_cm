.class public Lcom/android/server/am/InjectorAMS;
.super Ljava/lang/Object;
.source "InjectorAMS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/InjectorAMS$InjectorException;,
        Lcom/android/server/am/InjectorAMS$FlymeErrorReportManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static appWidgetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private static mCurBroadcastRecord:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final mErrorListenerLock:Ljava/lang/Object;

.field private static mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;

.field private static mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private static mRecentTaskChanged:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/android/server/am/InjectorAMS;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/InjectorAMS;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/InjectorAMS;->mErrorListenerLock:Ljava/lang/Object;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/InjectorAMS;->appWidgetList:Ljava/util/ArrayList;

    .line 263
    sget-object v0, Lcom/android/server/am/InjectorAMS;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Lcom/android/server/am/InjectorAMS;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/android/server/am/InjectorAMS;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/android/server/am/InjectorAMS;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/android/server/am/InjectorAMS;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/android/server/am/InjectorAMS;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/android/server/am/InjectorAMS;->appWidgetList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/server/am/InjectorAMS;->mErrorListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/IApplicationErrorListener;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/server/am/InjectorAMS;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/IApplicationErrorListener;)Landroid/app/IApplicationErrorListener;
    .locals 0
    .param p0, "x0"    # Landroid/app/IApplicationErrorListener;

    .prologue
    .line 41
    sput-object p0, Lcom/android/server/am/InjectorAMS;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/server/am/InjectorAMS;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static addServiceFlymeErrorReportManager()V
    .locals 3

    .prologue
    .line 80
    const-string v0, "flyme_error_report_manager"

    new-instance v1, Lcom/android/server/am/InjectorAMS$FlymeErrorReportManager;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/am/InjectorAMS$FlymeErrorReportManager;-><init>(Lcom/android/server/am/InjectorAMS$1;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 81
    return-void
.end method

.method private static getCurrentBroadcastRecord()Lcom/android/server/am/BroadcastRecord;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 281
    sget-object v2, Lcom/android/server/am/InjectorAMS;->mCurBroadcastRecord:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 291
    .local v0, "r":Lcom/android/server/am/BroadcastRecord;
    :goto_0
    return-object v0

    .line 285
    .end local v0    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    sget-object v2, Lcom/android/server/am/InjectorAMS;->mCurBroadcastRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 288
    .restart local v0    # "r":Lcom/android/server/am/BroadcastRecord;
    sget-object v2, Lcom/android/server/am/InjectorAMS;->mCurBroadcastRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 289
    sput-object v1, Lcom/android/server/am/InjectorAMS;->mCurBroadcastRecord:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method static hookActivityInfoBeforeCreatingActivityRecord(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 22
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingUid"    # I

    .prologue
    .line 214
    :try_start_0
    sget-object v16, Lcom/android/server/am/InjectorAMS;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 215
    .local v16, "pms":Lcom/android/server/pm/PackageManagerService;
    sget-object v18, Lcom/android/server/am/InjectorAMS;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 217
    .local v7, "dst":Lcom/android/server/am/ActivityStackSupervisor;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v9

    .line 218
    .local v9, "flag":I
    and-int/lit8 v18, v9, 0x10

    if-eqz v18, :cond_1

    const/4 v12, 0x1

    .line 219
    .local v12, "isLockView":Z
    :goto_0
    and-int/lit8 v18, v9, 0x20

    if-eqz v18, :cond_2

    const/4 v11, 0x1

    .line 220
    .local v11, "isFastStarting":Z
    :goto_1
    iget-object v0, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 221
    .local v6, "context":Landroid/content/Context;
    if-eqz p1, :cond_7

    if-eqz v12, :cond_0

    if-nez v11, :cond_7

    .line 222
    :cond_0
    if-nez v16, :cond_3

    .line 223
    const-string v18, "AccessControl"

    const-string v19, " error: "

    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "PackManager is null."

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v2, p1

    .line 255
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "dst":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v9    # "flag":I
    .end local v11    # "isFastStarting":Z
    .end local v12    # "isLockView":Z
    .end local v16    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_2
    return-object v2

    .line 218
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "dst":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v9    # "flag":I
    .restart local v16    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 219
    .restart local v12    # "isLockView":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 226
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v11    # "isFastStarting":Z
    :cond_3
    const/4 v10, 0x0

    .line 227
    .local v10, "hide":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v14, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 228
    .local v14, "needAccessControl":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v15, v0, Landroid/content/ActivityInfoExt;->needGuestControl:Z

    .line 232
    .local v15, "needGuestControl":Z
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "mz_app_lock_control"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 233
    .local v5, "appAccessControl":I
    const-string v18, "access_control"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmeizu/security/AccessControlManager;

    .line 234
    .local v3, "acm":Lmeizu/security/AccessControlManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    if-eqz v14, :cond_4

    if-nez v5, :cond_5

    :cond_4
    if-eqz v10, :cond_7

    if-nez v15, :cond_7

    .line 235
    :cond_5
    invoke-static {}, Lcom/android/server/pm/InjectorPMS;->getAccessInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    .line 236
    .local v17, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 237
    .local v4, "activityLabel":Ljava/lang/CharSequence;
    if-nez v4, :cond_6

    .line 238
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 242
    :cond_6
    :goto_3
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 243
    .local v13, "mAccessPkg":Ljava/lang/String;
    if-eqz v17, :cond_9

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 p1, v0

    .line 244
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/content/ActivityInfoExt;->mDisplaytitleString:Ljava/lang/CharSequence;

    .line 245
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v13, v0, Landroid/content/ActivityInfoExt;->mAccessPkg:Ljava/lang/String;

    .line 246
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/ActivityInfoExt;->mStartComponentName:Landroid/content/ComponentName;

    .line 247
    new-instance v18, Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .end local v3    # "acm":Lmeizu/security/AccessControlManager;
    .end local v4    # "activityLabel":Ljava/lang/CharSequence;
    .end local v5    # "appAccessControl":I
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "dst":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v9    # "flag":I
    .end local v10    # "hide":Z
    .end local v11    # "isFastStarting":Z
    .end local v12    # "isLockView":Z
    .end local v13    # "mAccessPkg":Ljava/lang/String;
    .end local v14    # "needAccessControl":Z
    .end local v15    # "needGuestControl":Z
    .end local v16    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_7
    :goto_5
    move-object/from16 v2, p1

    .line 255
    .end local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_2

    .line 238
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "acm":Lmeizu/security/AccessControlManager;
    .restart local v4    # "activityLabel":Ljava/lang/CharSequence;
    .restart local v5    # "appAccessControl":I
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v7    # "dst":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v9    # "flag":I
    .restart local v10    # "hide":Z
    .restart local v11    # "isFastStarting":Z
    .restart local v12    # "isLockView":Z
    .restart local v14    # "needAccessControl":Z
    .restart local v15    # "needGuestControl":Z
    .restart local v16    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_8
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_3

    .line 243
    .restart local v13    # "mAccessPkg":Ljava/lang/String;
    :cond_9
    const/16 p1, 0x0

    goto :goto_4

    .line 251
    .end local v3    # "acm":Lmeizu/security/AccessControlManager;
    .end local v4    # "activityLabel":Ljava/lang/CharSequence;
    .end local v5    # "appAccessControl":I
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "dst":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v9    # "flag":I
    .end local v10    # "hide":Z
    .end local v11    # "isFastStarting":Z
    .end local v12    # "isLockView":Z
    .end local v13    # "mAccessPkg":Ljava/lang/String;
    .end local v14    # "needAccessControl":Z
    .end local v15    # "needGuestControl":Z
    .end local v16    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v8

    .line 252
    .local v8, "e":Ljava/lang/Exception;
    const-string v18, "AccessControl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method static interceptForPermissionControl()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 295
    invoke-static {}, Lcom/android/server/am/InjectorAMS;->getCurrentBroadcastRecord()Lcom/android/server/am/BroadcastRecord;

    move-result-object v5

    .line 296
    .local v5, "r":Lcom/android/server/am/BroadcastRecord;
    if-nez v5, :cond_0

    .line 297
    const/4 v3, 0x1

    .line 331
    :goto_0
    return v3

    .line 300
    :cond_0
    iget-object v7, v5, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "packageName":Ljava/lang/String;
    sget-object v7, Lcom/android/server/am/InjectorAMS;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " r : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 304
    .local v0, "context":Landroid/content/Context;
    if-eqz v5, :cond_1

    iget-object v7, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/am/InjectorAMS;->appWidgetList:Ljava/util/ArrayList;

    iget-object v8, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 305
    const-string v7, "AUTORUN"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "interceptForPermissionControl: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 311
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_3

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_2

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_3

    .line 313
    :cond_2
    sget-object v7, Lcom/android/server/am/InjectorAMS;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autorun "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is system return allowed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 316
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v7

    .line 318
    :cond_3
    const/4 v3, 0x0

    .line 320
    .local v3, "limit":Z
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_op_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x41

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 323
    .local v6, "value":I
    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 324
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 326
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 328
    .end local v6    # "value":I
    :catch_1
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/am/InjectorAMS;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static isEventTypeConstraint(Ljava/lang/String;)Z
    .locals 1
    .param p0, "eventType"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v0, "anr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "crash"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "native_crash"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "watchdog"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static reportApplicationError(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 10
    .param p0, "eventType"    # Ljava/lang/String;
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "report"    # Ljava/lang/String;
    .param p7, "logFile"    # Ljava/io/File;
    .param p8, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 91
    invoke-static {p0}, Lcom/android/server/am/InjectorAMS;->isEventTypeConstraint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 96
    :cond_0
    sget-object v2, Lcom/android/server/am/InjectorAMS;->mErrorListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 97
    :try_start_0
    sget-object v1, Lcom/android/server/am/InjectorAMS;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;

    if-nez v1, :cond_1

    .line 98
    monitor-exit v2

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    if-eqz p1, :cond_7

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_7

    .line 103
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 107
    .local v7, "packageName":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 108
    .local v3, "dump":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/server/am/InjectorAMS;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2, v3}, Lcom/android/server/am/ActivityManagerService;->mzappendDropBoxProcessHeaders(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 109
    if-eqz p3, :cond_2

    .line 110
    const-string v1, "Activity: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_2
    if-eqz p4, :cond_3

    iget-object v1, p4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    iget-object v1, p4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v1, v2, :cond_3

    .line 113
    const-string v1, "Parent-Process: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_3
    if-eqz p4, :cond_4

    if-eq p4, p3, :cond_4

    .line 116
    const-string v1, "Parent-Activity: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_4
    if-eqz p5, :cond_5

    .line 119
    const-string v1, "Subject: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_5
    const-string v1, "Build: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 123
    const-string v1, "Debugger: Connected\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_6
    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v0, Lcom/android/server/am/InjectorAMS$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error report: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object v6, p0

    move-object v8, p2

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/InjectorAMS$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v0, "work":Ljava/lang/Thread;
    if-nez p1, :cond_8

    .line 198
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto/16 :goto_0

    .line 105
    .end local v0    # "work":Ljava/lang/Thread;
    .end local v3    # "dump":Ljava/lang/StringBuilder;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "packageName":Ljava/lang/String;
    goto/16 :goto_1

    .line 200
    .restart local v0    # "work":Ljava/lang/Thread;
    .restart local v3    # "dump":Ljava/lang/StringBuilder;
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method static setCurrentBroadcastRecord(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p0, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 273
    sget-object v0, Lcom/android/server/am/InjectorAMS;->mCurBroadcastRecord:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/am/InjectorAMS;->mCurBroadcastRecord:Ljava/lang/ref/WeakReference;

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    sget-object v0, Lcom/android/server/am/InjectorAMS;->TAG:Ljava/lang/String;

    const-string v1, "setCurrentBroadcastRecord(). Illegal state, is the last broadcast record consumed?"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setPackageManagerService(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 209
    sput-object p0, Lcom/android/server/am/InjectorAMS;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 210
    return-void
.end method

.method static setup(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p0, "target"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 75
    sput-object p0, Lcom/android/server/am/InjectorAMS;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 76
    return-void
.end method
