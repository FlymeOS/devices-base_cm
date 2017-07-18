.class public abstract Landroid/service/chooser/ChooserTargetService;
.super Landroid/app/Service;
.source "ChooserTargetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;
    }
.end annotation


# static fields
.field public static final BIND_PERMISSION:Ljava/lang/String; = "android.permission.BIND_CHOOSER_TARGET_SERVICE"

.field private static final DEBUG:Z = false

.field public static final META_DATA_NAME:Ljava/lang/String; = "android.service.chooser.chooser_target_service"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.chooser.ChooserTargetService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/chooser/ChooserTargetService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    const/16 v1, 0x5b

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Landroid/service/chooser/ChooserTargetService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    const/16 v1, 0x5d

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/chooser/ChooserTargetService;->TAG:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    .line 76
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 126
    const-string/jumbo v0, "android.service.chooser.ChooserTargetService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    return-object v2

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    invoke-direct {v0, p0, v2}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;-><init>(Landroid/service/chooser/ChooserTargetService;Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;)V

    iput-object v0, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    .line 134
    :cond_1
    iget-object v0, p0, Landroid/service/chooser/ChooserTargetService;->mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    return-object v0
.end method

.method public abstract onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation
.end method
