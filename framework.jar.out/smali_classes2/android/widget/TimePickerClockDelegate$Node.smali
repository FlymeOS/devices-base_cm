.class Landroid/widget/TimePickerClockDelegate$Node;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TimePickerClockDelegate$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mLegalKeys:[I

.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method public varargs constructor <init>(Landroid/widget/TimePickerClockDelegate;[I)V
    .locals 1
    .param p2, "legalKeys"    # [I

    .prologue
    .line 1226
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$Node;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1227
    iput-object p2, p0, Landroid/widget/TimePickerClockDelegate$Node;->mLegalKeys:[I

    .line 1228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TimePickerClockDelegate$Node;->mChildren:Ljava/util/ArrayList;

    .line 1229
    return-void
.end method


# virtual methods
.method public addChild(Landroid/widget/TimePickerClockDelegate$Node;)V
    .locals 1
    .param p1, "child"    # Landroid/widget/TimePickerClockDelegate$Node;

    .prologue
    .line 1232
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    return-void
.end method

.method public canReach(I)Landroid/widget/TimePickerClockDelegate$Node;
    .locals 4
    .param p1, "key"    # I

    .prologue
    const/4 v2, 0x0

    .line 1245
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$Node;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 1253
    :goto_0
    return-object v0

    .line 1248
    :cond_0
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePickerClockDelegate$Node;

    .line 1249
    .local v0, "child":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual {v0, p1}, Landroid/widget/TimePickerClockDelegate$Node;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "child":Landroid/widget/TimePickerClockDelegate$Node;
    :cond_2
    move-object v0, v2

    .line 1253
    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 1236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$Node;->mLegalKeys:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1237
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$Node;->mLegalKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1238
    const/4 v1, 0x1

    .line 1241
    :goto_1
    return v1

    .line 1236
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1241
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
