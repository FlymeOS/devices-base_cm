.class Lcyanogenmod/themes/ThemeManager$2;
.super Lcyanogenmod/themes/IThemeProcessingListener$Stub;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/themes/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/themes/ThemeManager;


# direct methods
.method constructor <init>(Lcyanogenmod/themes/ThemeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcyanogenmod/themes/ThemeManager;

    .prologue
    .line 136
    iput-object p1, p0, Lcyanogenmod/themes/ThemeManager$2;->this$0:Lcyanogenmod/themes/ThemeManager;

    invoke-direct {p0}, Lcyanogenmod/themes/IThemeProcessingListener$Stub;-><init>()V

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
    .line 139
    invoke-static {}, Lcyanogenmod/themes/ThemeManager;->-get2()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcyanogenmod/themes/ThemeManager$2$1;

    invoke-direct {v1, p0, p1}, Lcyanogenmod/themes/ThemeManager$2$1;-><init>(Lcyanogenmod/themes/ThemeManager$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method
