// npx tsc --downlevelIteration dependency-graph.ts
import * as fs from 'fs';
import * as Handlebars from "handlebars";
import * as fsPromise from 'fs/promises'; 
import * as Color from 'color';

import * as commandLineArgs from 'command-line-args';

class CommaSeparatedList {
  elems: Array<string>;
  constructor (csl: string) {
    this.elems = csl.split(",");
  }
}

const argsDefinitions = [
  { name: 'do', type: (csl: string) => new CommaSeparatedList(csl) },
  { name: 'out', type: String }
];

const args = commandLineArgs(argsDefinitions);

const librariesToProcess: Array<string> = args.do.elems;

const outputFileName = (args.out)?`./${args.out}.html`:`./${librariesToProcess}.html`;

console.log("Generating graph for libraries: " + librariesToProcess);

const progressBarMaxWidth: number = 575;

const darkMode: boolean = false;
const bgColor: string = darkMode?"#222222":"snow";
const graphBgColor: string = darkMode?"#222222":"#ffffff";
const mainTextColor: string = darkMode?"#ffffff":"#222222";

const colorPalette: Array<Color> = new Array();

// Tantrum Palette
// colorPalette.push(Color("orange"));
// colorPalette.push(Color("green"));
// colorPalette.push(Color("blue"));

// Rainbow Palette
colorPalette.push(Color("#0392cf"));
colorPalette.push(Color("#7bc043"));
colorPalette.push(Color("#f6cd61"));
colorPalette.push(Color("#f37736"));
colorPalette.push(Color("#ee4035"));

// Retro Palette
// colorPalette.push(Color("#5C4B51"));
// colorPalette.push(Color("#8CBEB2"));
// colorPalette.push(Color("#F2EBBF"));
// colorPalette.push(Color("#F3B562"));
// colorPalette.push(Color("#F06060"));

// // Neon Palette
// colorPalette.push(Color("#88F7E2"));
// colorPalette.push(Color("#44D492"));
// colorPalette.push(Color("#F5EB67"));
// colorPalette.push(Color("#FFA15C"));
// colorPalette.push(Color("#b9121b"));

// // Flat Palette
// colorPalette.push(Color("#7b1fa2"));
// colorPalette.push(Color("#57A4B1"));
// colorPalette.push(Color("#B0D894"));
// colorPalette.push(Color("#FADE89"));
// colorPalette.push(Color("#F95355"));

// Basic Colors Palette
// colorPalette.push(Color("#800000")); // 	maroon	
// colorPalette.push(Color("#8B0000")); //  	dark red	
// colorPalette.push(Color("#A52A2A")); //  	brown	
// colorPalette.push(Color("#B22222")); //  	firebrick	
// colorPalette.push(Color("#DC143C")); //  	crimson	
// colorPalette.push(Color("#FF0000")); //  	red	
// colorPalette.push(Color("#FF6347")); //  	tomato	
// colorPalette.push(Color("#FF7F50")); //  	coral	
// colorPalette.push(Color("#CD5C5C")); //  	indian red	
// colorPalette.push(Color("#F08080")); //  	light coral	
// colorPalette.push(Color("#E9967A")); //  	dark salmon	
// colorPalette.push(Color("#FA8072")); //  	salmon	
// colorPalette.push(Color("#FFA07A")); //  	light salmon	
// colorPalette.push(Color("#FF4500")); //  	orange red	
// colorPalette.push(Color("#FF8C00")); //  	dark orange	
// colorPalette.push(Color("#FFA500")); //  	orange	
// colorPalette.push(Color("#FFD700")); //  	gold	
// colorPalette.push(Color("#B8860B")); //  	dark golden rod	
// colorPalette.push(Color("#DAA520")); //  	golden rod	
// colorPalette.push(Color("#EEE8AA")); //  	pale golden rod	
// colorPalette.push(Color("#BDB76B")); //  	dark khaki	
// colorPalette.push(Color("#F0E68C")); //  	khaki	
// colorPalette.push(Color("#808000")); //  	olive	
// colorPalette.push(Color("#FFFF00")); //  	yellow	
// colorPalette.push(Color("#9ACD32")); //  	yellow green	
// colorPalette.push(Color("#556B2F")); //  	dark olive green	
// colorPalette.push(Color("#6B8E23")); //  	olive drab	
// colorPalette.push(Color("#7CFC00")); //  	lawn green	
// colorPalette.push(Color("#7FFF00")); //  	chartreuse	
// colorPalette.push(Color("#ADFF2F")); //  	green yellow	
// colorPalette.push(Color("#006400")); //  	dark green	
// colorPalette.push(Color("#008000")); //  	green	
// colorPalette.push(Color("#228B22")); //  	forest green	
// colorPalette.push(Color("#00FF00")); //  	lime	
// colorPalette.push(Color("#32CD32")); //  	lime green	
// colorPalette.push(Color("#90EE90")); //  	light green	
// colorPalette.push(Color("#98FB98")); //  	pale green	
// colorPalette.push(Color("#8FBC8F")); //  	dark sea green	
// colorPalette.push(Color("#00FA9A")); //  	medium spring green	
// colorPalette.push(Color("#00FF7F")); //  	spring green	
// colorPalette.push(Color("#2E8B57")); //  	sea green	
// colorPalette.push(Color("#66CDAA")); //  	medium aqua marine	
// colorPalette.push(Color("#3CB371")); //  	medium sea green	
// colorPalette.push(Color("#20B2AA")); //  	light sea green	
// colorPalette.push(Color("#2F4F4F")); //  	dark slate gray	
// colorPalette.push(Color("#008080")); //  	teal	
// colorPalette.push(Color("#008B8B")); //  	dark cyan	
// colorPalette.push(Color("#00FFFF")); //  	aqua	
// colorPalette.push(Color("#00FFFF")); //  	cyan	
// colorPalette.push(Color("#E0FFFF")); //  	light cyan	
// colorPalette.push(Color("#00CED1")); //  	dark turquoise	
// colorPalette.push(Color("#40E0D0")); //  	turquoise	
// colorPalette.push(Color("#48D1CC")); //  	medium turquoise	
// colorPalette.push(Color("#AFEEEE")); //  	pale turquoise	
// colorPalette.push(Color("#7FFFD4")); //  	aqua marine	
// colorPalette.push(Color("#B0E0E6")); //  	powder blue	
// colorPalette.push(Color("#5F9EA0")); //  	cadet blue	
// colorPalette.push(Color("#4682B4")); //  	steel blue	
// colorPalette.push(Color("#6495ED")); //  	corn flower blue	
// colorPalette.push(Color("#00BFFF")); //  	deep sky blue	
// colorPalette.push(Color("#1E90FF")); //  	dodger blue	
// colorPalette.push(Color("#ADD8E6")); //  	light blue	
// colorPalette.push(Color("#87CEEB")); //  	sky blue	
// colorPalette.push(Color("#87CEFA")); //  	light sky blue	
// colorPalette.push(Color("#191970")); //  	midnight blue	
// colorPalette.push(Color("#000080")); //  	navy	
// colorPalette.push(Color("#00008B")); //  	dark blue	
// colorPalette.push(Color("#0000CD")); //  	medium blue	
// colorPalette.push(Color("#0000FF")); //  	blue	
// colorPalette.push(Color("#4169E1")); //  	royal blue	
// colorPalette.push(Color("#8A2BE2")); //  	blue violet	
// colorPalette.push(Color("#4B0082")); //  	indigo	
// colorPalette.push(Color("#483D8B")); //  	dark slate blue	
// colorPalette.push(Color("#6A5ACD")); //  	slate blue	
// colorPalette.push(Color("#7B68EE")); //  	medium slate blue	
// colorPalette.push(Color("#9370DB")); //  	medium purple	
// colorPalette.push(Color("#8B008B")); //  	dark magenta	
// colorPalette.push(Color("#9400D3")); //  	dark violet	
// colorPalette.push(Color("#9932CC")); //  	dark orchid	
// colorPalette.push(Color("#BA55D3")); //  	medium orchid	
// colorPalette.push(Color("#800080")); //  	purple	
// colorPalette.push(Color("#D8BFD8")); //  	thistle	
// colorPalette.push(Color("#DDA0DD")); //  	plum	
// colorPalette.push(Color("#EE82EE")); //  	violet	
// colorPalette.push(Color("#FF00FF")); //  	magenta / fuchsia	
// colorPalette.push(Color("#DA70D6")); //  	orchid	
// colorPalette.push(Color("#C71585")); //  	medium violet red	
// colorPalette.push(Color("#DB7093")); //  	pale violet red	
// colorPalette.push(Color("#FF1493")); //  	deep pink	
// colorPalette.push(Color("#FF69B4")); //  	hot pink	
// colorPalette.push(Color("#FFB6C1")); //  	light pink	
// colorPalette.push(Color("#FFC0CB")); //  	pink	
// colorPalette.push(Color("#FAEBD7")); //  	antique white	
// colorPalette.push(Color("#F5F5DC")); //  	beige	
// colorPalette.push(Color("#FFE4C4")); //  	bisque	
// colorPalette.push(Color("#FFEBCD")); //  	blanched almond	
// colorPalette.push(Color("#F5DEB3")); //  	wheat	
// colorPalette.push(Color("#FFF8DC")); //  	corn silk	
// colorPalette.push(Color("#FFFACD")); //  	lemon chiffon	
// colorPalette.push(Color("#FAFAD2")); //  	light golden rod yellow	
// colorPalette.push(Color("#FFFFE0")); //  	light yellow	
// colorPalette.push(Color("#8B4513")); //  	saddle brown	
// colorPalette.push(Color("#A0522D")); //  	sienna	
// colorPalette.push(Color("#D2691E")); //  	chocolate	
// colorPalette.push(Color("#CD853F")); //  	peru	
// colorPalette.push(Color("#F4A460")); //  	sandy brown	
// colorPalette.push(Color("#DEB887")); //  	burly wood	
// colorPalette.push(Color("#D2B48C")); //  	tan	
// colorPalette.push(Color("#BC8F8F")); //  	rosy brown	
// colorPalette.push(Color("#FFE4B5")); //  	moccasin	
// colorPalette.push(Color("#FFDEAD")); //  	navajo white	
// colorPalette.push(Color("#FFDAB9")); //  	peach puff	
// colorPalette.push(Color("#FFE4E1")); //  	misty rose	
// colorPalette.push(Color("#FFF0F5")); //  	lavender blush	
// colorPalette.push(Color("#FAF0E6")); //  	linen	
// colorPalette.push(Color("#FDF5E6")); //  	old lace	
// colorPalette.push(Color("#FFEFD5")); //  	papaya whip	
// colorPalette.push(Color("#FFF5EE")); //  	sea shell	
// colorPalette.push(Color("#F5FFFA")); //  	mint cream	
// colorPalette.push(Color("#708090")); //  	slate gray	
// colorPalette.push(Color("#778899")); //  	light slate gray	
// colorPalette.push(Color("#B0C4DE")); //  	light steel blue	
// colorPalette.push(Color("#E6E6FA")); //  	lavender	
// colorPalette.push(Color("#FFFAF0")); //  	floral white	
// colorPalette.push(Color("#F0F8FF")); //  	alice blue	
// colorPalette.push(Color("#F8F8FF")); //  	ghost white	
// colorPalette.push(Color("#F0FFF0")); //  	honeydew	
// colorPalette.push(Color("#FFFFF0")); //  	ivory	
// colorPalette.push(Color("#F0FFFF")); //  	azure	
// colorPalette.push(Color("#FFFAFA")); //  	snow	

const collectionLabels: Map<string,string> = new Map<string,string>();

collectionLabels.set("pvslib-gitlab__master_", "NASALib");
collectionLabels.set("lib", "PVSPrelude");

generateHTML();


async function generateHTML() {

  const htmlTemplate: string = `
<!DOCTYPE html>
<html lang="en">
  <head>
  <title>{{title}}</title>
  {{#each js}}
    <script 
      type="text/javascript"
      src="{{this}}"></script>
    {{/each}}
    {{#if style}}
    <style type="text/css">{{style}}</style>
    {{/if}}
  </head>
  <body>
    <div id="mynetwork"></div>
    <div id="loadingBar">
      <div class="outerBorder">
        <div id="border">
          <div id="bar"></div>
        </div>
        <div id="loadingBarTitle">Loading graph, please wait...</div>
        <div id="text">0 %</div>
      </div>
    </div>
    <div id="controlPanel">
      <div id="pin" class="svgButton disabledBtn" onclick="togglePhysicsEnabled(this)" title="Disable physics">
        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
          <g clip-path="url(#clip0)">
          <path d="M15.4184 4.50005L14.5525 4.12501L13.0934 5.58411L9.0775 4.93638C8.89279 4.41665 8.56698 3.95859 8.13659 3.61361C7.7091 3.2727 7.19373 3.05996 6.65024 3L6.15244 3.4978L6.20708 7.31591L0.500244 7.30913L1.53658 8.34546L6.22743 8.3455L6.26838 11.7L6.78657 12.2182C7.32041 12.1748 7.8294 11.9743 8.24929 11.6418C8.66917 11.3093 8.98112 10.8597 9.14567 10.35L13.148 9.82499L14.648 11.325L15.5002 10.9773L15.4184 4.50005ZM13.6934 8.95233L13.257 8.80226L8.74338 9.40226L8.35474 9.70909C8.17601 10.2805 7.79872 10.769 7.29111 11.0864V8.35915L7.23655 4.17275C7.74956 4.50768 8.13596 5.00445 8.33431 5.58411L8.73656 5.90463L13.2706 6.63413L13.6934 6.49772L14.4775 5.71362L14.532 9.75L13.6934 8.95233Z" fill="#424242"/>
          </g>
          <defs>
          <clipPath id="clip0">
          <rect width="16" height="16" fill="white" transform="translate(0.000244141)"/>
          </clipPath>
          </defs>
          </svg>
      </div> 
      <div class="svgButton disabledBtn" onclick="saveGraphAsSVG()" title="Save as SVG">
        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd" clip-rule="evenodd" d="M13.3532 1.146L14.8532 2.646L15.0002 3V14.5L14.5002 15H1.50024L1.00024 14.5V1.5L1.50024 1H13.0002L13.3532 1.146ZM2.00024 2V14H14.0002V3.208L12.7932 2H11.0002V6H4.00024V2H2.00024ZM8.00024 2V5H10.0002V2H8.00024Z" fill="#424242"/>
          </svg>
      </div>      
      <div class="panelTitle">Libraries</div>
      <table class="legendBox">
      {{#each libraries}}
      <tr>
      <td style="background: {{backgroundColor}}">&nbsp;&nbsp;&nbsp;</td>
      <td >
      <div onclick="clusterByGroupId('{{groupName}}')" title="Collapse all theories in the library" class="svgButton disabledBtn"> 
        <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16"><g fill="currentColor"><path d="M9 9H4v1h5V9z"/><path fill-rule="evenodd" d="m5 3l1-1h7l1 1v7l-1 1h-2v2l-1 1H3l-1-1V6l1-1h2V3zm1 2h4l1 1v4h2V3H6v2zm4 1H3v7h7V6z" clip-rule="evenodd"/></g></svg>
        </div>
      </td>
      <td>{{name}}{{#unless isTarget}}*{{/unless}} ({{theoryCount}})</td>
      </tr>
      {{/each}}
      </table>
      Total number of libraries: {{totalLibrariesCount}} <br/>
      Total number of theories: {{totalTheoriesCount}} <br/> 
      <small><hr/>* Library is partially represented.</small> 
    </div>

    <script type="text/javascript">

      // create an array with nodes
      var nodes = [
        {{#each theories}}
        { id: "{{id}}", label: "{{label}}", title: "{{title}}", group: "{{group}}" } {{#if @last}} {{else}}, {{/if}} 
        {{/each}}
      ];

      // create an array with edges
      var edges = new vis.DataSet([
        {{#each edges}}
        { from: "{{from}}", to: "{{to}}", arrows: "to" } {{#if @last}} {{else}}, {{/if}} 
        {{/each}}
        ]);

      const nodesDS = new vis.DataSet(nodes);

      // create a network
      var container = document.getElementById("mynetwork");
      var data = {
        nodes: nodesDS,
        edges: edges,
      };
      var options = {
        nodes: {
          shape: "dot",
          size: 10,
          font: {
            size: 12,
            color: "${mainTextColor}",
          },
          borderWidth: 3,
        },
        edges: {
          width: 2,
          color: { inherit: "to" },
        },
        interaction: {
          hover: true,
          multiselect: true,
          selectConnectedEdges: true,
          selectable: true        },
        physics: {
          forceAtlas2Based: {
            gravitationalConstant: -26,
            centralGravity: 0.005,
            springLength: 230,
            springConstant: 0.18,
          },
          maxVelocity: 146,
          solver: "forceAtlas2Based",
          timestep: 0.35,
          stabilization: {
            enabled: true,
            iterations: 2000,
            updateInterval: 25,
          },
        },
        groups: {
          {{#each libraries}}
            "{{groupName}}" : {
              color : { background: "{{backgroundColor}}", border: "{{borderColor}}",
                        hover: { background: "{{borderColor}}", border: "{{backgroundColor}}" },
                        highlight: { background: "{{borderColor}}", border: "{{backgroundColor}}" } }
            },
          {{/each}}
    
        }
     };      
      var network = new vis.Network(container, data, options);

      network.on("selectNode", function (params) {
        if (params.nodes.length == 1) {
          if (network.isCluster(params.nodes[0]) == true) {
            network.openCluster(params.nodes[0]);
          } 
        }
      });

      function clusterByGroupId(groupId) {
        var clusterLabel = "";
        switch(groupId){
          {{#each libraries}}
          case "{{groupName}}":
            clusterLabel = "{{name}}";
            break;
          {{/each}}          
        }
        var clusterOptionsByData = {
          joinCondition: function (childOptions) {
            return childOptions.group == groupId && !childOptions.legend;
          },
          clusterNodeProperties: {
            id: "cidCluster" + groupId,
            borderWidth: 3,
            shape: "circle",
            group: groupId,
            label: clusterLabel
          },
        };
        network.cluster(clusterOptionsByData);
      }

      // progress bar
      network.on("stabilizationProgress", function (params) {
        var maxWidth = {{progressBarMaxWidth}};
        var minWidth = 20;
        var widthFactor = params.iterations / params.total;
        var width = Math.max(minWidth, maxWidth * widthFactor);

        document.getElementById("bar").style.width = width + "px";
        document.getElementById("text").innerText =
          Math.round(widthFactor * 100) + " %";
      });

      network.once("stabilizationIterationsDone", function () {
        document.getElementById("text").innerText = "100 %";
        document.getElementById("bar").style.width = "{{progressBarMaxWidth}}px";
        document.getElementById("loadingBar").style.opacity = 0;
        // really clean the dom element
        setTimeout(function () {
          document.getElementById("loadingBar").style.display = "none";
        }, 500);
        // enable buttons
        const svgButtons = document.querySelectorAll('.svgButton');
        svgButtons.forEach(element => {
          element.classList.replace('disabledBtn','enabledBtn');
        });
        enabledButtons = true;
      });      

      // control panel
      function togglePhysicsEnabled(button){
        if(enabledButtons){
          const prevVal = network.physics.physicsEnabled;
          if (prevVal) {
            network.setOptions( { physics: false } );
            button.innerHTML = \`<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M4.10039 1.08186L3.72535 1.94778L5.18445 3.40687L4.53672 7.42274C4.01699 7.60746 3.55893 7.93327 3.21395 8.36365C2.87304 8.79115 2.6603 9.30651 2.60034 9.85L3.09814 10.3478L6.91625 10.2932L6.90947 16L7.9458 14.9637L7.94584 10.2728L11.3003 10.2319L11.8185 9.71367C11.7751 9.17983 11.5746 8.67084 11.2421 8.25096C10.9096 7.83107 10.4601 7.51912 9.95038 7.35457L9.42533 3.35227L10.9253 1.85227L10.5776 1L4.10039 1.08186ZM8.55267 2.80687L8.4026 3.24324L9.00261 7.75686L9.30943 8.1455C9.88079 8.32423 10.3694 8.70152 10.6868 9.20914L7.95949 9.20914L3.77309 9.26369C4.10802 8.75069 4.60479 8.36429 5.18445 8.16594L5.50497 7.76369L6.23448 3.22959L6.09806 2.80687L5.31396 2.02277L9.35034 1.96825L8.55267 2.80687Z" fill="#424242"/></svg>\`;
            button.title = "Enable physics"
          } else {
            if(confirm("Warning: the nodes could be rearranged by enabling physics.\\nAre you sure you want to proceed?")) {
              button.innerHTML = \`<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                <g clip-path="url(#clip0)">
                <path d="M15.4184 4.50005L14.5525 4.12501L13.0934 5.58411L9.0775 4.93638C8.89279 4.41665 8.56698 3.95859 8.13659 3.61361C7.7091 3.2727 7.19373 3.05996 6.65024 3L6.15244 3.4978L6.20708 7.31591L0.500244 7.30913L1.53658 8.34546L6.22743 8.3455L6.26838 11.7L6.78657 12.2182C7.32041 12.1748 7.8294 11.9743 8.24929 11.6418C8.66917 11.3093 8.98112 10.8597 9.14567 10.35L13.148 9.82499L14.648 11.325L15.5002 10.9773L15.4184 4.50005ZM13.6934 8.95233L13.257 8.80226L8.74338 9.40226L8.35474 9.70909C8.17601 10.2805 7.79872 10.769 7.29111 11.0864V8.35915L7.23655 4.17275C7.74956 4.50768 8.13596 5.00445 8.33431 5.58411L8.73656 5.90463L13.2706 6.63413L13.6934 6.49772L14.4775 5.71362L14.532 9.75L13.6934 8.95233Z" fill="#424242"/>
                </g>
                <defs>
                <clipPath id="clip0">
                <rect width="16" height="16" fill="white" transform="translate(0.000244141)"/>
                </clipPath>
                </defs>
                </svg>\`;
              button.title = "Disable physics"
              network.setOptions( { physics: true } );
            }
          }
        }
      }

      function objectToArray(obj) {
        return Object.keys(obj).map(function (key) {
          obj[key].id = key;
          return obj[key];
        });
      }

      function saveGraphAsSVG(){
        if(enabledButtons){
          function addConnections(elem, index) {
            elem.connections = network.getConnectedNodes(elem.id);
          }
          const link = document.createElement("a");
          network.storePositions();
          var nodes = nodesDS.get();
          nodes.forEach(addConnections);
          var exportValue = JSON.stringify(nodes, undefined, 2);
          const file = new Blob([exportValue], { type: 'text/plain' });
          link.href = URL.createObjectURL(file);
          link.download = "${outputFileName}.json";
          link.click();
          URL.revokeObjectURL(link.href);
        }
      }      
    </script>
  </body>
</html>`;

  const style = `
body {
  color: ${mainTextColor};
  font: 11pt arial;
  background-color: ${bgColor};
}

#mynetwork {
  position: absolute;
  top: 0px;
  left: 300px;
  width: 100%;
  height: 100%;
  background-color: ${graphBgColor};
}

#loadingBar {
  position: absolute;
  top: 0px;
  left: 300px;
  width: 100%;
  height: 100%;
  background-color: rgba(200, 200, 200, 0.8);
  -webkit-transition: all 0.5s ease;
  -moz-transition: all 0.5s ease;
  -ms-transition: all 0.5s ease;
  -o-transition: all 0.5s ease;
  transition: all 0.5s ease;
  opacity: 1;
}

#loadingBarTitle {
  position: absolute;
  top: 4px;
  left: 20px;
  width: 500px;
  height: 50px;
  margin: auto auto auto auto;
  font-size: 12pt;
  color: #000000;
}

#text {
  position: absolute;
  top: 30px;
  left: 20px;
  width: 500px;
  height: 50px;
  margin: auto auto auto auto;
  font-size: 20px;
  color: #2333a5;
}

div.outerBorder {
  position: relative;
  top: 400px;
  width: 600px;
  height: 60px;
  margin: auto auto auto auto;
  border: 2px solid rgba(0, 0, 0, 0.1);
  background: rgb(252, 252, 252); /* Old browsers */
  background: -moz-linear-gradient(
    top,
    rgba(252, 252, 252, 1) 0%,
    rgba(237, 237, 237, 1) 100%
  ); /* FF3.6+ */
  background: -webkit-gradient(
    linear,
    left top,
    left bottom,
    color-stop(0%, rgba(252, 252, 252, 1)),
    color-stop(100%, rgba(237, 237, 237, 1))
  ); /* Chrome,Safari4+ */
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}

#border {
  position: absolute;
  top: 30px;
  left: 10px;
  width: ${progressBarMaxWidth}px;
  height: 23px;
  margin: auto auto auto auto;
  box-shadow: 0px 0px 4px rgba(0, 0, 0, 0.2);
}

#bar {
  position: absolute;
  top: 0px;
  left: 0px;
  width: 20px;
  height: 20px;
  margin: auto auto auto auto;
  border: 2px solid rgba(30, 30, 30, 0.05);
  background: rgb(0, 173, 246); /* Old browsers */
  box-shadow: 2px 0px 4px rgba(0, 0, 0, 0.4);
}

#controlPanel {
  border: 2px solid rgba(30, 30, 30, 0.17);
  width: 90%;
  padding: 3pt;
  width: 270px;
}

.svgButton {
  width:fit-content;
  float: right;
  padding-left: 2pt;
  padding-right: 2pt;
}

.enabledBtn:hover {
  background-color:  rgb(231, 231, 231);
  cursor: pointer;
}

.disabledBtn:hover {
  cursor: not-allowed;
}

.panelTitle{
  text-transform: uppercase;
  padding: 2pt;
}

.legendBox{
  padding: 3pt;
}
`;

  var edges: Array<{ from: number; to: number; }> = [];
  var nodes: Map<String, number> = new Map();
  var lastNodeId = 0;

  var libraryToProcess: string;
  for (libraryToProcess of librariesToProcess) {

    const dependencyFile = `./${libraryToProcess}/pvsbin/top.dep`;
    await readDependencyFile(dependencyFile, edges, nodes, lastNodeId);
    lastNodeId = nodes.size;
    // console.log("generateHTML " + nodes.size); // debug

  }

  // console.log(nodes); // debug

  var libraries: Map<string, { libIndex: number; theoryCount: number; isTarget: boolean }> = new Map();
  var nextLibId: number = 0;
  const theoriesInfo = new Array<{ id: number; label: string; title: string; group: string; }>();

  nodes.forEach((theoryId: number, fullyQualifiedTheoryName: String) => {
    var splitTheoryName = fullyQualifiedTheoryName.split("/");
    var theory_name = splitTheoryName[splitTheoryName.length - 1];
    var collection: string = splitTheoryName[splitTheoryName.length - 3];
    if (collectionLabels.has(collection)) {
      collection = collectionLabels.get(collection)!;
    }
    const libName = splitTheoryName[splitTheoryName.length - 2];
    var fullyQualifiedLibName = collection + "/" + libName;
    var libIndex: number = -1;
    if (libraries.has(fullyQualifiedLibName)) {
      libIndex = libraries.get(fullyQualifiedLibName)!.libIndex;
      libraries.get(fullyQualifiedLibName)!.theoryCount++;
    } else {
      libIndex = nextLibId++;
      // console.log(`Adding library: ${lib} id ${lib_id}`); // debug
      libraries.set(fullyQualifiedLibName, { libIndex: libIndex, theoryCount: 1, isTarget: (librariesToProcess.includes(libName)) });
    }
    // console.log(`color for id ${lib_id} is ${colorPalette[lib_id]}`); //debug
    theoriesInfo.push({ id: theoryId, label: theory_name, title: fullyQualifiedLibName + "." + theory_name, group: fullyQualifiedLibName });
  });

  const librariesInfo = new Array<{
    name: string;
    groupName: string;
    backgroundColor: string;
    borderColor: string;
    theoryCount: number;
    isTarget: boolean;
  }>();

  libraries.forEach((libData, libName) => {
    librariesInfo.push({
      name: libName, 
      groupName: libName,
      borderColor: "",     // Colors are asigned after sorting by lib name
      backgroundColor: "", // 
      theoryCount: libData.theoryCount,
      isTarget: libData.isTarget
    });
  });

  librariesInfo.sort((a,b) => { 
    const a_val = a.name.toUpperCase(); 
    const b_val = b.name.toUpperCase(); 
    return (a_val<b_val? -1 : (a_val>b_val? 1 : 0))});

  const numberOfLibraries: number = libraries.size;
  const colorPaletteSize: number = colorPalette.length;
  librariesInfo.forEach(function (libData, libIndex) {
    // decide color for library
    var libColor: Color = colorPalette[libIndex];
    if (numberOfLibraries > colorPalette.length) {
      const candidateColor = libIndex * (colorPaletteSize - 1) / (numberOfLibraries - 1);
      const prevColor: number = Math.floor(candidateColor);
      libColor = colorPalette[prevColor];
      if (prevColor != candidateColor) {
        const nextColor: number = Math.ceil(candidateColor);
        libColor = libColor.mix(colorPalette[nextColor], (1 - (nextColor - candidateColor)));
        // console.log(`color for id ${libId} ${colorDown} - ${colorLocation} - ${colorUp}`);
      } // else console.log(`color for id ${libId} ${colorDown} - ${colorLocation} - ${colorDown}`);
    }
    libData.backgroundColor = libColor.hex();
    libData.borderColor = libColor.darken(0.3).hex();
  });

  const html: string = Handlebars.compile(htmlTemplate, { noEscape: true })({
    title: "Dependencies for " + librariesToProcess,
    style: style,
    js: ["https://unpkg.com/vis-network/standalone/umd/vis-network.min.js"],
    theories: theoriesInfo,
    libraries: librariesInfo,
    edges: edges,
    progressBarMaxWidth: progressBarMaxWidth,
    totalLibrariesCount: librariesInfo.length,
    totalTheoriesCount: theoriesInfo.length
  });

  fs.writeFileSync(outputFileName, html, { encoding: 'utf-8' });
  console.log(`Written to ${outputFileName}`);
}

async function readDependencyFile(dependencyFile: string, edges: Array<{ from: number; to: number}>, nodes: Map<String, number>, lastNodeId: number) {
  var data: Array<{ theory: string; imports: Array<string>; }> = [];

  const file = await fsPromise.open(dependencyFile, 'r');
  for await (const line of file.readLines()) {
    if (line.includes(":")) {
      var tokens = line.split(':');
      var theory = tokens[0];
      var deps : string = tokens[1];
      var importings = deps.split(",");
      // console.log(`theory: ${theory} deps ${importings}`); //debug
      data.push({
          theory, imports: importings
      });
    }
  }

  var theoryDeps: { theory: string; imports: Array<string>};

  const tabuList: Array<string> = [ "top" ];

  for (theoryDeps of data) {
    var pivotTheory = theoryDeps.theory;
    // console.log(`Analyzing ${theoryDeps.theory} IMPORTING ${theoryDeps.imports}`); //debug
    var splitTheoryName = pivotTheory.split("/");
    if(! tabuList.includes(splitTheoryName[splitTheoryName.length-1])) {
      var pivotTheoryId: number = -1;
      if(nodes.has(pivotTheory))
        pivotTheoryId = nodes.get(pivotTheory)!;
      else {
        pivotTheoryId = lastNodeId++;
        // console.log(`Adding theory: ${pivotTheory} id ${pivotTheoryId}`); //debug
        nodes.set(pivotTheory, pivotTheoryId);
      }
      var dep: string;
      for (dep of theoryDeps.imports){
        if(dep.length>0){
          var dep_id = -1;
          if(nodes.has(dep))
            dep_id = nodes.get(dep)!;
          else {
            dep_id = lastNodeId++;
            // console.log(`Adding theory: ${dep} id ${dep_id}`); //debug
            nodes.set(dep,dep_id);
          }
          edges.push({ from: pivotTheoryId, to: dep_id });
        }
      }
    }
  }

  // console.log("read dep file " + nodes.size);
}

