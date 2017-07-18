.class Lcyanogenmod/themes/ThemeManager$1$1;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/themes/ThemeManager$1;->onProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcyanogenmod/themes/ThemeManager$1;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcyanogenmod/themes/ThemeManager$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcyanogenmod/themes/ThemeManager$1;
    .param p2, "val$progress"    # I

    .prologue
    .line 86
    iput-object p1, p0, Lcyanogenmod/themes/ThemeManager$1$1;->this$1:Lcyanogenmod/themes/ThemeManager$1;

    iput p2, p0, Lcyanogenmod/themes/ThemeManager$1$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 89
    iget-object v4, p0, Lcyanogenmod/themes/ThemeManager$1$1;->this$1:Lcyanogenmod/themes/ThemeManager$1;

    iget-object v4, v4, Lcyanogenmod/themes/ThemeManager$1;->this$0:Lcyanogenmod/themes/ThemeManager;

    invoke-static {v4}, Lcyanogenmod/themes/ThemeManager;->-get1(Lcyanogenmod/themes/ThemeManager;)Ljava/util/Set;

    move-result-object v5

    monitor-enter v5

    .line 90
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v3, "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;>;"
    iget-object v4, p0, Lcyanogenmod/themes/ThemeManager$1$1;->this$1:Lcyanogenmod/themes/ThemeManager$1;

    iget-object v4, v4, Lcyanogenmod/themes/ThemeManager$1;->this$0:Lcyanogenmod/themes/ThemeManager;

    invoke-static {v4}, Lcyanogenmod/themes/ThemeManager;->-get1(Lcyanogenmod/themes/ThemeManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .local v1, "listener":Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;
    :try_start_1
    iget v4, p0, Lcyanogenmod/themes/ThemeManager$1$1;->val$progress:I

    invoke-interface {v1, v4}, Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;->onProgress(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcyanogenmod/themes/ThemeManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "Unable to update theme change progress"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "listener":Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    .end local v3    # "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 99
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    .restart local v3    # "listenersToRemove":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;>;"
    :cond_0
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 100
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;

    .line 101
    .restart local v1    # "listener":Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;
    iget-object v4, p0, Lcyanogenmod/themes/ThemeManager$1$1;->this$1:Lcyanogenmod/themes/ThemeManager$1;

    iget-object v4, v4, Lcyanogenmod/themes/ThemeManager$1;->this$0:Lcyanogenmod/themes/ThemeManager;

    invoke-static {v4}, Lcyanogenmod/themes/ThemeManager;->-get1(Lcyanogenmod/themes/ThemeManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v1    # "listener":Lcyanogenmod/themes/ThemeManager$ThemeChangeListener;
    :cond_1
    monitor-exit v5

    .line 88
    return-void
.end method
