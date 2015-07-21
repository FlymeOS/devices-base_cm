.class public Lcom/android/server/gesture/GestureService;
.super Landroid/service/gesture/IGestureService$Stub;
.source "GestureService.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "GestureService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputFilter:Lcom/android/server/gesture/GestureInputFilter;

.field private mInputManager:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/service/gesture/IGestureService$Stub;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/gesture/GestureService;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/server/gesture/GestureService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 47
    return-void
.end method


# virtual methods
.method public setOnDoubleClickPendingIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/gesture/GestureService;->mInputFilter:Lcom/android/server/gesture/GestureInputFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/gesture/GestureInputFilter;->setOnDoubleClickPendingIntent(Landroid/app/PendingIntent;)V

    .line 62
    return-void
.end method

.method public setOnLongPressPendingIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/gesture/GestureService;->mInputFilter:Lcom/android/server/gesture/GestureInputFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/gesture/GestureInputFilter;->setOnLongPressPendingIntent(Landroid/app/PendingIntent;)V

    .line 58
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/android/server/gesture/GestureInputFilter;

    iget-object v1, p0, Lcom/android/server/gesture/GestureService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/gesture/GestureInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/gesture/GestureService;->mInputFilter:Lcom/android/server/gesture/GestureInputFilter;

    .line 53
    iget-object v0, p0, Lcom/android/server/gesture/GestureService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/gesture/GestureService;->mInputFilter:Lcom/android/server/gesture/GestureInputFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->registerSecondaryInputFilter(Landroid/view/IInputFilter;)V

    .line 54
    return-void
.end method
