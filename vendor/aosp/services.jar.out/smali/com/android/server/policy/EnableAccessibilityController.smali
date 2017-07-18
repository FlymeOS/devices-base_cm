.class public Lcom/android/server/policy/EnableAccessibilityController;
.super Ljava/lang/Object;
.source "EnableAccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/EnableAccessibilityController$1;
    }
.end annotation


# static fields
.field private static final ENABLE_ACCESSIBILITY_DELAY_MILLIS:I = 0x1770

.field public static final MESSAGE_ENABLE_ACCESSIBILITY:I = 0x3

.field public static final MESSAGE_SPEAK_ENABLE_CANCELED:I = 0x2

.field public static final MESSAGE_SPEAK_WARNING:I = 0x1

.field private static final SPEAK_WARNING_DELAY_MILLIS:I = 0x7d0


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private mCanceled:Z

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFirstPointerDownX:F

.field private mFirstPointerDownY:F

.field private final mHandler:Landroid/os/Handler;

.field private final mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

.field private mSecondPointerDownX:F

.field private mSecondPointerDownY:F

.field private final mTone:Landroid/media/Ringtone;

.field private final mTouchSlop:F

.field private final mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/EnableAccessibilityController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mDestroyed:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/media/Ringtone;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/EnableAccessibilityController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->enableAccessibility()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onAccessibilityEnabledCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/EnableAccessibilityController$1;-><init>(Lcom/android/server/policy/EnableAccessibilityController;)V

    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    .line 79
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mWindowManager:Landroid/view/IWindowManager;

    .line 82
    const-string/jumbo v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 102
    iput-object p1, p0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/server/policy/EnableAccessibilityController;->mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

    .line 104
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    .line 105
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/server/policy/EnableAccessibilityController$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/EnableAccessibilityController$2;-><init>(Lcom/android/server/policy/EnableAccessibilityController;)V

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 113
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    .line 114
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    const v1, 0x1050076

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTouchSlop:F

    .line 101
    return-void
.end method

.method public static canEnableAccessibilityViaGesture(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 123
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 131
    const-string/jumbo v4, "enable_accessibility_global_gesture_enabled"

    .line 130
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 132
    invoke-static {p0}, Lcom/android/server/policy/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    :cond_1
    :goto_0
    return v1

    .line 126
    :cond_2
    return v1

    :cond_3
    move v1, v2

    .line 132
    goto :goto_0
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 206
    iput-boolean v1, p0, Lcom/android/server/policy/EnableAccessibilityController;->mCanceled:Z

    .line 207
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private enableAccessibility()V
    .locals 17

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    .line 216
    invoke-static {v15}, Lcom/android/server/policy/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    .line 218
    .local v13, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 219
    return-void

    .line 221
    :cond_0
    const/4 v7, 0x0

    .line 223
    .local v7, "keyguardLocked":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/EnableAccessibilityController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v15}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 228
    .end local v7    # "keyguardLocked":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/EnableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    const/4 v5, 0x1

    .line 230
    .local v5, "hasMoreThanOneUser":Z
    :goto_1
    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 231
    .local v10, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v15, v10, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_4

    const/4 v3, 0x1

    .line 234
    .local v3, "enableTouchExploration":Z
    :goto_2
    if-nez v3, :cond_1

    .line 235
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    .line 236
    .local v11, "serviceCount":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_3
    if-ge v6, v11, :cond_1

    .line 237
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 238
    .local v1, "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v15, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_5

    .line 240
    const/4 v3, 0x1

    .line 241
    move-object v10, v1

    .line 247
    .end local v1    # "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v6    # "i":I
    .end local v11    # "serviceCount":I
    :cond_1
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v15

    iget-object v12, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 248
    .local v12, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    .line 272
    if-eqz v7, :cond_2

    .line 274
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v15, v2, v3}, Landroid/view/accessibility/IAccessibilityManager;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/EnableAccessibilityController;->mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    .line 215
    return-void

    .line 228
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "enableTouchExploration":Z
    .end local v5    # "hasMoreThanOneUser":Z
    .end local v10    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "hasMoreThanOneUser":Z
    goto :goto_1

    .line 231
    .restart local v10    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "enableTouchExploration":Z
    goto :goto_2

    .line 236
    .restart local v1    # "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v6    # "i":I
    .restart local v11    # "serviceCount":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 250
    .end local v1    # "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v6    # "i":I
    .end local v11    # "serviceCount":I
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v14

    .line 251
    .local v14, "userId":I
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "enabledServiceString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 255
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v15, "enabled_accessibility_services"

    .line 254
    invoke-static {v9, v15, v4, v14}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 259
    const-string/jumbo v15, "touch_exploration_granted_accessibility_services"

    .line 258
    invoke-static {v9, v15, v4, v14}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 262
    if-eqz v3, :cond_7

    .line 263
    const-string/jumbo v15, "touch_exploration_enabled"

    .line 264
    const/16 v16, 0x1

    .line 263
    move/from16 v0, v16

    invoke-static {v9, v15, v0, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 267
    :cond_7
    const-string/jumbo v15, "accessibility_script_injection"

    .line 268
    const/16 v16, 0x1

    .line 267
    move/from16 v0, v16

    invoke-static {v9, v15, v0, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 270
    const-string/jumbo v15, "accessibility_enabled"

    .line 271
    const/16 v16, 0x1

    .line 270
    move/from16 v0, v16

    invoke-static {v9, v15, v0, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_4

    .line 276
    .end local v4    # "enabledServiceString":Ljava/lang/String;
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    .end local v14    # "userId":I
    :catch_0
    move-exception v8

    .local v8, "re":Landroid/os/RemoteException;
    goto :goto_4

    .line 224
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "enableTouchExploration":Z
    .end local v5    # "hasMoreThanOneUser":Z
    .end local v8    # "re":Landroid/os/RemoteException;
    .end local v10    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7    # "keyguardLocked":Z
    :catch_1
    move-exception v8

    .restart local v8    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private static getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 141
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 143
    .local v1, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 147
    .end local v1    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mDestroyed:Z

    .line 150
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 157
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownX:F

    .line 158
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownY:F

    .line 159
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownX:F

    .line 160
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownY:F

    .line 161
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    .line 162
    const-wide/16 v2, 0x7d0

    .line 161
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 163
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    .line 164
    const-wide/16 v2, 0x1770

    .line 163
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 165
    return v4

    .line 167
    :cond_0
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 172
    .local v2, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 173
    .local v0, "action":I
    iget-boolean v4, p0, Lcom/android/server/policy/EnableAccessibilityController;->mCanceled:Z

    if-eqz v4, :cond_1

    .line 174
    if-ne v0, v8, :cond_0

    .line 175
    iput-boolean v5, p0, Lcom/android/server/policy/EnableAccessibilityController;->mCanceled:Z

    .line 177
    :cond_0
    return v8

    .line 179
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 202
    :cond_2
    :goto_0
    :pswitch_0
    return v8

    .line 181
    :pswitch_1
    const/4 v4, 0x2

    if-le v2, v4, :cond_2

    .line 182
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    goto :goto_0

    .line 186
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 187
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownX:F

    iget v7, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownY:F

    .line 186
    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v1

    .line 188
    .local v1, "firstPointerMove":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 189
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    .line 191
    :cond_3
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 192
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownX:F

    iget v7, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownY:F

    .line 191
    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v3

    .line 193
    .local v3, "secondPointerMove":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 194
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    goto :goto_0

    .line 199
    .end local v1    # "firstPointerMove":F
    .end local v3    # "secondPointerMove":F
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
