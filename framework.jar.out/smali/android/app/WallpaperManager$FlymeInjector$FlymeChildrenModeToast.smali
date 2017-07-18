.class final Landroid/app/WallpaperManager$FlymeInjector$FlymeChildrenModeToast;
.super Ljava/lang/Object;
.source "WallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlymeChildrenModeToast"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgStringResId"    # I

    .prologue
    .line 1382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    iput-object p1, p0, Landroid/app/WallpaperManager$FlymeInjector$FlymeChildrenModeToast;->mContext:Landroid/content/Context;

    .line 1384
    iput p2, p0, Landroid/app/WallpaperManager$FlymeInjector$FlymeChildrenModeToast;->mResId:I

    .line 1382
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1389
    iget-object v0, p0, Landroid/app/WallpaperManager$FlymeInjector$FlymeChildrenModeToast;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/WallpaperManager$FlymeInjector$FlymeChildrenModeToast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/app/WallpaperManager$FlymeInjector$FlymeChildrenModeToast;->mResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1388
    return-void
.end method
