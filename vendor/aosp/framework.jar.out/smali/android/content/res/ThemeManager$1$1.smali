.class Landroid/content/res/ThemeManager$1$1;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/ThemeManager$1;->onProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/content/res/ThemeManager$1;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Landroid/content/res/ThemeManager$1;I)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Landroid/content/res/ThemeManager$1$1;->this$1:Landroid/content/res/ThemeManager$1;

    iput p2, p0, Landroid/content/res/ThemeManager$1$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 60
    iget-object v4, p0, Landroid/content/res/ThemeManager$1$1;->this$1:Landroid/content/res/ThemeManager$1;

    iget-object v4, v4, Landroid/content/res/ThemeManager$1;->this$0:Landroid/content/res/ThemeManager;

    # getter for: Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;
    invoke-static {v4}, Landroid/content/res/ThemeManager;->access$000(Landroid/content/res/ThemeManager;)Ljava/util/Set;

    move-result-object v5

    monitor-enter v5

    .line 61
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v3, "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ThemeManager$ThemeChangeListener;>;"
    iget-object v4, p0, Landroid/content/res/ThemeManager$1$1;->this$1:Landroid/content/res/ThemeManager$1;

    iget-object v4, v4, Landroid/content/res/ThemeManager$1;->this$0:Landroid/content/res/ThemeManager;

    # getter for: Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;
    invoke-static {v4}, Landroid/content/res/ThemeManager;->access$000(Landroid/content/res/ThemeManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ThemeManager$ThemeChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .local v2, "listener":Landroid/content/res/ThemeManager$ThemeChangeListener;
    :try_start_1
    iget v4, p0, Landroid/content/res/ThemeManager$1$1;->val$progress:I

    invoke-interface {v2, v4}, Landroid/content/res/ThemeManager$ThemeChangeListener;->onProgress(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    # getter for: Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/content/res/ThemeManager;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Unable to update theme change progress"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/content/res/ThemeManager$ThemeChangeListener;
    .end local v3    # "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ThemeManager$ThemeChangeListener;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 71
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ThemeManager$ThemeChangeListener;>;"
    :cond_0
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 72
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ThemeManager$ThemeChangeListener;

    .line 73
    .restart local v2    # "listener":Landroid/content/res/ThemeManager$ThemeChangeListener;
    iget-object v4, p0, Landroid/content/res/ThemeManager$1$1;->this$1:Landroid/content/res/ThemeManager$1;

    iget-object v4, v4, Landroid/content/res/ThemeManager$1;->this$0:Landroid/content/res/ThemeManager;

    # getter for: Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;
    invoke-static {v4}, Landroid/content/res/ThemeManager;->access$000(Landroid/content/res/ThemeManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    .end local v2    # "listener":Landroid/content/res/ThemeManager$ThemeChangeListener;
    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    return-void
.end method
