.class Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
.super Ljava/lang/Object;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/AsyncImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeTask"
.end annotation


# instance fields
.field private mAlbumId:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mKey:I

.field private mNotScale:Z

.field private mPath:Ljava/lang/String;

.field private mPosition:I

.field private mTimeStamp:J

.field private mVarargs:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/htc/music/util/AsyncImageDecoder;


# direct methods
.method public varargs constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;III[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "albumId"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1140
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 1114
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 1115
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 1116
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 1117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 1118
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 1119
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 1120
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 1121
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    .line 1141
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 1142
    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 1143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 1144
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 1145
    iput-object p5, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 1146
    return-void
.end method

.method public varargs constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;ILandroid/content/res/AssetFileDescriptor;I[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "afd"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1148
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 1114
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 1115
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 1116
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 1117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 1118
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 1119
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 1120
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 1121
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    .line 1149
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 1150
    iput-object p3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 1151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 1152
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 1153
    iput-object p5, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 1154
    return-void
.end method

.method public varargs constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;II[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "path"
    .parameter "albumId"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1156
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 1114
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 1115
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 1116
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 1117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 1118
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 1119
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 1120
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 1121
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    .line 1157
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 1158
    iput-object p3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 1159
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 1160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 1161
    iput p5, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 1162
    iput-object p6, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 1163
    return-void
.end method

.method public varargs constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;IZ[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "notScale"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1131
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 1114
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 1115
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 1116
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 1117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 1118
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 1119
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 1120
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 1121
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    .line 1132
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 1133
    iput-object p3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 1134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 1135
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 1136
    iput-boolean p5, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    .line 1137
    iput-object p6, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 1138
    return-void
.end method

.method public varargs constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1123
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 1114
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 1115
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 1116
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 1117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 1118
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 1119
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 1120
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 1121
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    .line 1124
    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 1125
    iput-object p3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 1126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 1127
    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 1128
    iput-object p5, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 1129
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V
    .locals 4
    .parameter
    .parameter "task"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1165
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 1114
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 1115
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 1116
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 1117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 1118
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 1119
    iput v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 1120
    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    .line 1121
    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    .line 1166
    if-nez p2, :cond_0

    .line 1176
    :goto_0
    return-void

    .line 1169
    :cond_0
    iget v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    .line 1170
    iget-object v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    .line 1171
    iget v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    .line 1172
    iget-object v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 1173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    .line 1174
    iget v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    .line 1175
    iget-object v0, p2, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1112
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1112
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1112
    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1112
    iget-wide v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 1180
    instance-of v2, p1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    if-nez v2, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1183
    check-cast v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    .line 1184
    .local v0, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    iget v2, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    iget v3, v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1190
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "mKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    iget v1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1192
    const-string v1, ", mRequestTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    iget-wide v1, p0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
