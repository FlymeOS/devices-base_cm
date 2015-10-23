.class Landroid/widget/Editor$MzShowSuggestionsRunnable;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MzShowSuggestionsRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 5241
    iput-object p1, p0, Landroid/widget/Editor$MzShowSuggestionsRunnable;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 5241
    invoke-direct {p0, p1}, Landroid/widget/Editor$MzShowSuggestionsRunnable;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5245
    iget-object v0, p0, Landroid/widget/Editor$MzShowSuggestionsRunnable;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->showSuggestions()V

    .line 5246
    return-void
.end method
