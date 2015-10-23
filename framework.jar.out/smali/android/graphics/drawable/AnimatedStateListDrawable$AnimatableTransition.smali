.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;
.super Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatableTransition"
.end annotation


# instance fields
.field private final mA:Landroid/graphics/drawable/Animatable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Animatable;)V
    .locals 1
    .param p1, "a"    # Landroid/graphics/drawable/Animatable;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$1;)V

    .line 251
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    .line 252
    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 257
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 262
    return-void
.end method
