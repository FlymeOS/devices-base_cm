.class final Lcom/android/server/wm/AppTransition$FlymeInjector;
.super Ljava/lang/Object;
.source "AppTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field private static mAnimArray:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 1201
    invoke-static {p1}, Lcom/android/server/wm/AppTransition$FlymeInjector;->overlayAnim(I)I

    move-result v0

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private static overlayAnim(I)I
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 1205
    sget-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    if-nez v2, :cond_2

    .line 1206
    new-instance v2, Landroid/util/SparseIntArray;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    .line 1207
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1208
    .local v1, "res":Landroid/content/res/Resources;
    if-nez v1, :cond_1

    .line 1228
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local p0    # "id":I
    :cond_0
    :goto_0
    return p0

    .line 1211
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local p0    # "id":I
    :cond_1
    sget-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "activity_open_enter"

    const-string v4, "anim"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_activity_to_next_open_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1212
    sget-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "activity_open_exit"

    const-string v4, "anim"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_activity_to_next_open_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1213
    sget-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "activity_close_enter"

    const-string v4, "anim"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_activity_to_next_close_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1214
    sget-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "activity_close_exit"

    const-string v4, "anim"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_activity_to_next_close_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1215
    sget-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "task_open_enter"

    const-string v4, "anim"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_open_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1216
    sget-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "task_open_exit"

    const-string v4, "anim"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_open_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1217
    sget-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "task_close_enter"

    const-string v4, "anim"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_close_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1218
    sget-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "task_close_exit"

    const-string v4, "anim"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_close_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1219
    sget-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "wallpaper_open_enter"

    const-string v4, "anim"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_wallpaper_close_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1220
    sget-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "wallpaper_open_exit"

    const-string v4, "anim"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_wallpaper_close_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1221
    sget-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "wallpaper_close_enter"

    const-string v4, "anim"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_wallpaper_open_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1222
    sget-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "wallpaper_close_exit"

    const-string v4, "anim"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_wallpaper_open_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1224
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2
    sget-object v2, Lcom/android/server/wm/AppTransition$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1225
    .local v0, "overlayId":I
    if-lez v0, :cond_0

    move p0, v0

    .line 1226
    goto/16 :goto_0
.end method
