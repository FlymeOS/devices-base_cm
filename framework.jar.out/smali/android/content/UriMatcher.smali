.class public Landroid/content/UriMatcher;
.super Ljava/lang/Object;
.source "UriMatcher.java"


# static fields
.field private static final EXACT:I = 0x0

.field public static final NO_MATCH:I = -0x1

.field private static final NUMBER:I = 0x1

.field private static final TEXT:I = 0x2


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCode:I

.field private mText:Ljava/lang/String;

.field private mWhich:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput v0, p0, Landroid/content/UriMatcher;->mCode:I

    .line 140
    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Landroid/content/UriMatcher;->mCode:I

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 129
    return-void
.end method


# virtual methods
.method public addURI(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "code"    # I

    .prologue
    .line 162
    if-gez p3, :cond_0

    .line 163
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is invalid: it must be positive"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 166
    :cond_0
    const/4 v10, 0x0

    .line 167
    .local v10, "tokens":[Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 168
    move-object/from16 v5, p2

    .line 170
    .local v5, "newPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_1

    .line 171
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 173
    :cond_1
    const-string/jumbo v11, "/"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 176
    .end local v5    # "newPath":Ljava/lang/String;
    .end local v10    # "tokens":[Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_5

    array-length v8, v10

    .line 177
    .local v8, "numTokens":I
    :goto_0
    move-object v6, p0

    .line 178
    .local v6, "node":Landroid/content/UriMatcher;
    const/4 v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_a

    .line 179
    if-gez v3, :cond_6

    move-object v9, p1

    .line 180
    .local v9, "token":Ljava/lang/String;
    :goto_2
    iget-object v2, v6, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 181
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 184
    .local v7, "numChildren":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v7, :cond_3

    .line 185
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UriMatcher;

    .line 186
    .local v1, "child":Landroid/content/UriMatcher;
    iget-object v11, v1, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 187
    move-object v6, v1

    .line 191
    .end local v1    # "child":Landroid/content/UriMatcher;
    :cond_3
    if-ne v4, v7, :cond_4

    .line 193
    new-instance v1, Landroid/content/UriMatcher;

    invoke-direct {v1}, Landroid/content/UriMatcher;-><init>()V

    .line 194
    .restart local v1    # "child":Landroid/content/UriMatcher;
    const-string/jumbo v11, "#"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 195
    const/4 v11, 0x1

    iput v11, v1, Landroid/content/UriMatcher;->mWhich:I

    .line 201
    :goto_4
    iput-object v9, v1, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 202
    iget-object v11, v6, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    move-object v6, v1

    .line 178
    .end local v1    # "child":Landroid/content/UriMatcher;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 176
    .end local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "node":Landroid/content/UriMatcher;
    .end local v7    # "numChildren":I
    .end local v8    # "numTokens":I
    .end local v9    # "token":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "numTokens":I
    goto :goto_0

    .line 179
    .restart local v3    # "i":I
    .restart local v6    # "node":Landroid/content/UriMatcher;
    :cond_6
    aget-object v9, v10, v3

    .restart local v9    # "token":Ljava/lang/String;
    goto :goto_2

    .line 184
    .restart local v1    # "child":Landroid/content/UriMatcher;
    .restart local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .restart local v4    # "j":I
    .restart local v7    # "numChildren":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 196
    :cond_8
    const-string/jumbo v11, "*"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 197
    const/4 v11, 0x2

    iput v11, v1, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_4

    .line 199
    :cond_9
    const/4 v11, 0x0

    iput v11, v1, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_4

    .line 206
    .end local v1    # "child":Landroid/content/UriMatcher;
    .end local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .end local v4    # "j":I
    .end local v7    # "numChildren":I
    .end local v9    # "token":Ljava/lang/String;
    :cond_a
    move/from16 v0, p3

    iput v0, v6, Landroid/content/UriMatcher;->mCode:I

    .line 160
    return-void
.end method

.method public match(Landroid/net/Uri;)I
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    .line 220
    .local v10, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 222
    .local v4, "li":I
    move-object v9, p0

    .line 224
    .local v9, "node":Landroid/content/UriMatcher;
    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    .line 225
    iget v12, p0, Landroid/content/UriMatcher;->mCode:I

    return v12

    .line 228
    :cond_0
    const/4 v1, -0x1

    .end local v9    # "node":Landroid/content/UriMatcher;
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 229
    if-gez v1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    .line 230
    .local v11, "u":Ljava/lang/String;
    :goto_1
    iget-object v5, v9, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 231
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    if-nez v5, :cond_3

    .line 268
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .end local v11    # "u":Ljava/lang/String;
    :cond_1
    iget v12, v9, Landroid/content/UriMatcher;->mCode:I

    return v12

    .line 229
    :cond_2
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .restart local v11    # "u":Ljava/lang/String;
    goto :goto_1

    .line 234
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    :cond_3
    const/4 v9, 0x0

    .line 235
    .local v9, "node":Landroid/content/UriMatcher;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 236
    .local v6, "lj":I
    const/4 v2, 0x0

    .end local v9    # "node":Landroid/content/UriMatcher;
    .local v2, "j":I
    :goto_2
    if-ge v2, v6, :cond_5

    .line 237
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/UriMatcher;

    .line 239
    .local v8, "n":Landroid/content/UriMatcher;
    iget v12, v8, Landroid/content/UriMatcher;->mWhich:I

    packed-switch v12, :pswitch_data_0

    .line 259
    :cond_4
    :goto_3
    if-eqz v9, :cond_7

    .line 263
    .end local v8    # "n":Landroid/content/UriMatcher;
    :cond_5
    if-nez v9, :cond_8

    .line 264
    const/4 v12, -0x1

    return v12

    .line 241
    .restart local v8    # "n":Landroid/content/UriMatcher;
    :pswitch_0
    iget-object v12, v8, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 242
    move-object v9, v8

    .local v9, "node":Landroid/content/UriMatcher;
    goto :goto_3

    .line 246
    .end local v9    # "node":Landroid/content/UriMatcher;
    :pswitch_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    .line 247
    .local v7, "lk":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_4
    if-ge v3, v7, :cond_6

    .line 248
    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 249
    .local v0, "c":C
    const/16 v12, 0x30

    if-lt v0, v12, :cond_4

    const/16 v12, 0x39

    if-gt v0, v12, :cond_4

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 253
    .end local v0    # "c":C
    :cond_6
    move-object v9, v8

    .line 254
    .restart local v9    # "node":Landroid/content/UriMatcher;
    goto :goto_3

    .line 256
    .end local v3    # "k":I
    .end local v7    # "lk":I
    .end local v9    # "node":Landroid/content/UriMatcher;
    :pswitch_2
    move-object v9, v8

    .line 257
    .restart local v9    # "node":Landroid/content/UriMatcher;
    goto :goto_3

    .line 236
    .end local v9    # "node":Landroid/content/UriMatcher;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 228
    .end local v8    # "n":Landroid/content/UriMatcher;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
