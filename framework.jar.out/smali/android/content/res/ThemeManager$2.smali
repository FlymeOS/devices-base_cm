.class Landroid/content/res/ThemeManager$2;
.super Landroid/content/res/IThemeProcessingListener$Stub;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/ThemeManager;


# direct methods
.method constructor <init>(Landroid/content/res/ThemeManager;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Landroid/content/res/ThemeManager$2;->this$0:Landroid/content/res/ThemeManager;

    invoke-direct {p0}, Landroid/content/res/IThemeProcessingListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedProcessing(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Landroid/content/res/ThemeManager$2;->this$0:Landroid/content/res/ThemeManager;

    # getter for: Landroid/content/res/ThemeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/content/res/ThemeManager;->access$200(Landroid/content/res/ThemeManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/content/res/ThemeManager$2$1;

    invoke-direct {v1, p0, p1}, Landroid/content/res/ThemeManager$2$1;-><init>(Landroid/content/res/ThemeManager$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method
